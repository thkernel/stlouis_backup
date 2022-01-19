# == Schema Information
#
# Table name: stock_movement_reasons
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  description :text
#  account_id  :bigint
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class StockMovementReasonSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :description, :status
  has_one :account
end
