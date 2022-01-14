# == Schema Information
#
# Table name: stock_exits
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

class StockExit < ApplicationRecord
  belongs_to :product
  belongs_to :account
end
