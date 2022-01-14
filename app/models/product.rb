# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  slug                :string
#  product_category_id :bigint
#  name                :string
#  unity_id            :bigint
#  bar_code            :string
#  unit_price          :float
#  provider_id         :bigint
#  reorder_threshold   :float
#  current_stock       :float
#  description         :string
#  account_id          :bigint
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :product_category
  belongs_to :provider
  belongs_to :unity
  belongs_to :account


  validates :name, presence: true, uniqueness: true

	# Change default params ID to uid
  def to_param
    uid
  end

  
end
