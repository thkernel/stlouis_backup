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

require 'test_helper'

class RechargeFidelityCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
