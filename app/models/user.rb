# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  first_name :string
#  last_name  :string
#  sex        :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  #include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  #belongs_to :role
  has_one :account, as: :accountable
# For active storage
  has_one_attached :avatar

  


  # Get userable full name
  def full_name
    self.userable.full_name
  end


  
  # Change default params ID to uid
  def to_param
    uid
  end
end
