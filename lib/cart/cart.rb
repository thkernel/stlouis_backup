require "singleton"
module ShoppingCart

    # Cart class.
    class Cart
        include Singleton
        
      
        @@cart_content = [] 
        def initialize(session)
            @session = session
        end
        def add_to_cart(product)
            
            # Create a new item
            cart_item = CartItem.new(product.id,product.selling_price_xof)

            @@cart_content.push(cart_item)

            session[:cart] = @@cart_content
        end

        

        def remove_from_cart
        end

        def cart_content_count
        end

        def get_cart_content 
            @@cart_content
        end

        def update_cart

        end
    end


    # Cart Item class
    class CartItem
        attr_accessor :product_id, :product_name,  :quantity, :price
        
        def initialize(product_id, product_name, price, quantity = 1)
            @product_id = produc_id
            @product_name = product_name
            @price = price
            @quantity = quantity
        end
    end
end