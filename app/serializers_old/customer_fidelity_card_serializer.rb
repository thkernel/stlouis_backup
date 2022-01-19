# == Schema Information
#
# Table name: customer_fidelity_cards
#
#  id               :bigint           not null, primary key
#  uid              :string
#  customer_id      :bigint
#  fidelity_card_id :bigint
#  status           :string
#  account_id       :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CustomerFidelityCardSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :customer
  has_one :fidelity_card
  has_one :account
end
