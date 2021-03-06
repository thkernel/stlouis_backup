module API
    module V1
      module Defaults
        extend ActiveSupport::Concern

        included do
          prefix "api"
          version "v1", using: :path
          default_format :json
          format :json
          formatter :json, 
               Grape::Formatter::ActiveModelSerializers
  
=begin
          before do
            error!("401 Unauthorized, 401") unless authenticated
          end
=end          
            
          helpers do
            def permitted_params
              @permitted_params ||= declared(params, 
                 include_missing: false)
            end
  
            def logger
              Rails.logger
            end

            # For auth
            def authenticate!
              error!('Unauthorized. Invalid or expired token.', 401) unless current_user
            end
        
            def current_user
              # find token. Check if valid.
              token = ApiKey.where(access_token: params[:token]).first
              if token && !token.expired?
                @current_user = User.find(token.user_id)
              else
                false
              end
            end 

            # Payment
            def payment?(fidelity_card, order)
              card = FidelityCard.find(fidelity_card.id)

              if card.present?
                if card.balance < order.total
                   false
                else
                  current_balance = card.balance - order.total
                  card.update_column(:balance, current_balance);
                  order.update_column(:paid, "Payée")
                  order.update_column(:payment_method, "Carte de fidélité")
                  order.update_column(:status, "Confirmée");

                  true
                end
              else
                false

              end
            end #End payment

          end
  
          rescue_from ActiveRecord::RecordNotFound do |e|
            error_response(message: e.message, status: 404)
          end
  
          rescue_from ActiveRecord::RecordInvalid do |e|
            error_response(message: e.message, status: 422)
          end
        end
      end
    end
  end
  