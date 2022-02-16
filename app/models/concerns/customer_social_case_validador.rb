module CustomerSocialCaseValidator
    class CustomerSocialCaseValidator < ActiveModel::Validator
  
        def validate(record)

            
            #puts "IMPUTABLE TYPE: #{record.imputable_type}"

            if record.new_record?

                #Recuperer le client
                customer = Customer.find(record.customer_id)
                
                #Verifier son cas
                customer_social_case = CustomerSocialCase.find_by(customer_id: customer.id)
                
                #Si cas social
                if customer_social_case.present?
                    
                    
                    if record.order_items.present?
                        #Recuprer le nombre de plat par jour

                        #Recupere ces commandes du jour
                        current_date_orders = Order.where(customer_id: customer.id)
                        current_date_order_dish_number = 0

                        if current_date_orders.present?
                            current_date_order_items = OrderItem.where(order_id: current_date_orders.map(&:id))
                            current_date_order_dish_number = current_date_order_items.collect {|order_item| order_item.valid? ? (order_item.quantity) : 0}.sum 
                        end
                        
                        #order_items = record.order_items 
                        current_order_dish_number = record.order_items.collect {|order_item| order_item.valid? ? (order_item.quantity) : 0}.sum 
                        
                        customer_social_case_dish_number = customer_social_case.to_i

                         #Comparer
                        if current_order_dish_number > customer_social_case_dish_number  
                            #Si depasser message erreur avec modif
                        end

                    end
                   
                   
                    
                end
                
                
                
                #Sinon valider
                puts "ON VALIDATOR"
                puts "RECORD: #{record.inspect}"
                #order_items = record.order_items
                order_items = record.order_items

                #puts "ORDER ITEMS: #{order_items.inspect}"
                puts "ORDER ITEM : #{order_items.inspect}"

                order_items.each do |order_item|

                    if order_item.product_id.present?
                        product = Product.find(order_item.product_id)
                        quantity = order_item.quantity.to_f

                        puts "PRODUCT FOUND: #{product.inspect}"

                        if product.present? && quantity > 0.0  
                            
                            puts "Product current stock: #{product.current_stock}"
                            if product.current_stock.present? && product.current_stock >= quantity
                                puts "STOCK AVAILABLE"
                                current_stock = product.current_stock - quantity
                                puts "CURRENT STOCK: #{current_stock}"
                                product.update_column(:current_stock, current_stock);
                            else
                                puts "ELSE CASE"
                                record.errors.add(:product,": #{product.name} insuffisant dans le stock")
                            end 
                        end
                    end
                
                end
                
                
            end
    
            #puts "RECORD: #{record.imputation_items.inspect}"
        end
      
    end
end