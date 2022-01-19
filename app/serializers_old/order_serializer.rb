# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  uid            :string
#  customer_id    :bigint
#  table_id       :bigint
#  subtotal       :float            default(0.0)
#  total          :float            default(0.0)
#  tax            :float            default(0.0)
#  shipping       :float            default(0.0)
#  status         :string
#  paid           :string
#  payment_method :string
#  account_id     :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :uid, :total_amount, :status
  has_one :customer
  has_one :account
end
