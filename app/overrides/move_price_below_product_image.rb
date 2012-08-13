Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :name => "move_price_below_product_image",
                     :insert_after => "div.product-image",
                     :cut => "span.price")
