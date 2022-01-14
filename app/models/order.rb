# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  uid          :string
#  customer_id  :bigint
#  table_id     :bigint
#  total_amount :float
#  account_id   :bigint
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :customer
  belongs_to :account

  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items ,  allow_destroy: true , :reject_if => :no_order_items

	# Change default params ID to uid
  def to_param
    uid
  end

  def no_order_items(attributes)
   attributes[:title].blank?
  end
  
  
end
