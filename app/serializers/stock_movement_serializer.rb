# == Schema Information
#
# Table name: stock_movements
#
#  id            :bigint           not null, primary key
#  uid           :string
#  movement_type :string
#  product_id    :bigint
#  unity_id      :bigint
#  quantity      :float
#  description   :text
#  account_id    :bigint
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class StockMovementSerializer < ActiveModel::Serializer
  attributes :id, :uid, :movement_type, :quantity, :description, :status
  has_one :product
  has_one :unity
  has_one :account
end
