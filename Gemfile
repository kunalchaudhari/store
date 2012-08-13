source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'mysql2'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'spree', :git => 'git://github.com/kunalchaudhari/spree.git', :branch => 'refactor-header-partial-for-deface-override'

gem 'spree_auth_devise', :git => 'git://github.com/kunalchaudhari/spree_auth_devise.git', :branch => 'support-spree-1851'

group :production do
  gem 'unicorn'
  gem 'mysql2'
  gem 'foreman'
  gem 'therubyracer' #only required for 0.70.x or later
end

group :development do
  gem 'capistrano'
end