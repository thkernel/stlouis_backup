# == Schema Information
#
# Table name: unities
#
#  id           :bigint           not null, primary key
#  uid          :string
#  name         :string
#  unity_symbol :string
#  decription   :text
#  status       :string
#  account_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class UnitySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :decription, :status
  has_one :account
end
