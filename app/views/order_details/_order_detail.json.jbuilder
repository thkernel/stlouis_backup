json.extract! order_detail, :id, :product_id, :unit_price, :quantity, :amount, :status, :order_id, :user_id, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
