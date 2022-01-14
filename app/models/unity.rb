# == Schema Information
#
# Table name: unities
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  decription :text
#  status     :string
#  account_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unity < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :account


	# Change default params ID to uid
  def to_param
    uid
  end

  
end
