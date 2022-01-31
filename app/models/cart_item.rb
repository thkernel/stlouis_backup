# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  cart_id    :bigint
#  product_id :bigint
#  quantity   :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product, optional: true
  belongs_to :food, optional: true
end
