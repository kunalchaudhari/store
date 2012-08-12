Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                    :name => "remove_attrs_from_sidebar",
                    :remove_from_attributes => "aside#sidebar",
                    :attributes => {:class => 'alpha'})

Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                    :name => "add_attrs_to_sidebar",
                    :add_to_attributes => "aside#sidebar",
                    :attributes => {:class => 'omega'})
