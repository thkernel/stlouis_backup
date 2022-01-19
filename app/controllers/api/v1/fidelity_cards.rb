module API
    module V1
      class FidelityCards < Grape::API
        include API::V1::Defaults
        resource :fidelity_cards do
          desc "Return all poll_categories"
          get "" do
            FidelityCard.all
          end


          desc "Return by uid"
          params do
            requires :uid, type: String, desc: "ID of the user"
          end
          get "/search/:name" do 
              FidelityCard.find_by(uid: permitted_params[:uid]) 
          end


          desc "Return by uid"
          params do
            requires :uid, type: String, desc: "ID of the user"
          end
          get "/by/:uid" do 
            puts "CARD"
            card = FidelityCard.find_by(uid: permitted_params[:uid]) 
            
            if card.present?
              puts "CARD UID: #{card.inspect}"
              customer_fidelity_card = card.customer_fidelity_card
              
              if customer_fidelity_card.present? 
                puts "customer_fidelity_card: #{customer_fidelity_card.inspect}"
                  order = Order.where("customer_id = ? AND status = ?", customer_fidelity_card.id, "Impayée").first
                  if order.present?

                     if  payment?(card, order )
                        {status: 'ok', order: order}
                      else
                        {status: 'no', message: Error}
                      end

                  end 
              else
                {status: "empty", message: "Carte non attribuée ou inactive"} 
              end
            else
              {status: "empty", message: "Empty"} 
            end

          end



        desc "Return a poll_tems"
          params do
            requires :id, type: String, desc: "ID of the user"
          end
          get ":id" do
            PollCategory.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end