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

class TableSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
  has_one :account
end
