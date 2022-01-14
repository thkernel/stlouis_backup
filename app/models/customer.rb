# == Schema Information
#
# Table name: customers
#
#  id          :bigint           not null, primary key
#  uid         :string
#  first_name  :string
#  last_name   :string
#  civility    :string
#  address     :string
#  country     :string
#  city        :string
#  phone       :string
#  street      :string
#  po_box      :string
#  zip_code    :string
#  description :string
#  status      :string
#  account_id  :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Customer < ApplicationRecord
  
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  belongs_to :account
  
  # Change default params ID to uid
  def to_param
    uid
  end
end
