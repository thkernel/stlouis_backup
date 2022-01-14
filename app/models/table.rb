# == Schema Information
#
# Table name: tables
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  status     :string
#  account_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Table < ApplicationRecord

	include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :account

  def to_param
    uid
  end



end
