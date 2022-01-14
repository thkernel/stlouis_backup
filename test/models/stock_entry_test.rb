# == Schema Information
#
# Table name: stock_entries
#
#  id          :bigint           not null, primary key
#  uid         :string
#  product_id  :bigint
#  reason      :string
#  quantity    :float
#  description :text
#  status      :string
#  account_id  :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StockEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
