# == Schema Information
#
# Table name: recharge_fidelity_cards
#
#  id         :bigint           not null, primary key
#  uid        :string
#  amount     :float
#  status     :string
#  account_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RechargeFidelityCard < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :account


	# Change default params ID to uid
  def to_param
    uid
  end

  
end
