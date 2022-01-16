# == Schema Information
#
# Table name: stock_exits
#
#  id          :bigint           not null, primary key
#  uid         :string
#  product_id  :bigint
#  reason      :string
#  quantity    :float            default(0.0)
#  unity_id    :bigint
#  description :text
#  status      :string
#  account_id  :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class StockExitSerializer < ActiveModel::Serializer
  attributes :id, :uid, :reason, :quantity, :description, :status
  has_one :product
  has_one :account
end
