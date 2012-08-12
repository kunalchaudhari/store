Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "place_content_as_first_child_of_wrapper",
                     :insert_top => "div#wrapper",
                     :cut => "div#content")

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                    :name => "remove_attrs_from_content",
                    :remove_from_attributes => "div#content",
                    :attributes => {:class => "omega"})

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                    :name => "add_attrs_to_content",
                    :add_to_attributes => "div#content",
                    :attributes => {:class => "alpha"})
