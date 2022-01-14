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


	# Change default params ID to uid
  def to_param
    uid
  end
  
end
