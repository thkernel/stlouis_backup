# == Schema Information
#
# Table name: foods
#
#  id               :bigint           not null, primary key
#  uid              :string
#  slug             :string
#  food_category_id :bigint
#  name             :string
#  min_cooking_time :time
#  max_cooking_time :time
#  price            :float
#  descriptions     :string
#  status           :string
#  account_id       :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Food < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid, :set_status

  belongs_to :account
  belongs_to :food_category

	validates :name, presence: true, uniqueness: true


	# Change default params ID to uid
  def to_param
    uid
  end


  def set_status
    unless self.status.present?
      self.status = "Actif"
    end
  end
  
end
