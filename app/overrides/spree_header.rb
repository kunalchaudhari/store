Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :name => "move_main_nav_links_to_nav_bar",
                     :insert_top => "ul#nav-bar",
                     :partial => "spree/shared/store_menu")

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "remove_main_nav_bar",
                    :remove => "ul#main-nav-bar")

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "move_search_bar_at_first_child",
                    :insert_top => "ul#nav-bar",
                    :cut => "li#search-bar")

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "remove_attrs_from_top_nav_bar",
                    :remove_from_attributes => "nav#top-nav-bar",
                    :attributes => {:class => 'ten'})

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "add_attrs_to_top_nav_bar",
                    :add_to_attributes => "nav#top-nav-bar",
                    :attributes => {:class => 'thirteen'})

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "remove_attrs_from_logo",
                    :remove_from_attributes => "figure#logo",
                    :attributes => {:class => 'six'})

Deface::Override.new(:virtual_path => "spree/shared/_header",
                    :name => "add_attrs_to_logo",
                    :add_to_attributes => "figure#logo",
                    :attributes => {:class => 'three'})

