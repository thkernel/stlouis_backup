# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  order_id   :bigint
#  food_id    :bigint
#  quantity   :float            default(0.0)
#  price      :float            default(0.0)
#  amount     :float            default(0.0)
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :quantity, :price, :amount, :status
  has_one :order
  has_one :food
end
