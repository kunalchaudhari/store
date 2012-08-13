Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "add_all_products_title",
                     :insert_top => "[data-hook='homepage_products']",
                     :text => "<h6 class='taxon-title'><%= t(:all_products) %></h6>")
