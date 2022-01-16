module OrdersHelper

	def unpaid?(order)
        if order.present? && order.paid == "Impayée"
            true
        else
            false
        end
    end

    
end
