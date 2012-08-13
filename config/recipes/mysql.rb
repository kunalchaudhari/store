set_default(:mysql_host, "localhost")
set_default(:mysql_user) { application }
set_default(:mysql_password) { Capistrano::CLI.password_prompt "MySQL Password: " }
set_default(:mysql_database) { "#{application}_production" }

namespace :mysql do
  desc "Install the latest stable release of mysql."
  task :install, roles: :db, only: {primary: true} do
    run "#{sudo} apt-get -y update"
    run "#{sudo} apt-get -y install mysql libmysqlclient15-dev libmysql-ruby"
  end
  after "deploy:install", "mysql:install"

  desc "Create a database for this application."
  task :create_database, roles: :db, only: {primary: true} do
    run %Q{#{sudo} -u postgres psql -c "create user #{mysql_user} with password '#{mysql_password}';"}
    run %Q{#{sudo} -u postgres psql -c "create database #{mysql_database} owner #{mysql_user};"}
  end
  # after "deploy:setup", "mysql:create_database"

  desc "Generate the database.yml configuration file."
  task :setup, roles: :app do
    run "mkdir -p #{shared_path}/config"
    template "mysql.yml.erb", "#{shared_path}/config/database.yml"
  end
  after "deploy:setup", "mysql:setup"

  desc "Symlink the database.yml file into latest release"
  task :symlink, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update", "mysql:symlink"
end
