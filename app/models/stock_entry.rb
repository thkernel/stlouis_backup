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

class StockEntry < ApplicationRecord
  belongs_to :product
  belongs_to :account
end
