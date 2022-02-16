class CustomerSocialCaseSerializer < ActiveModel::Serializer
  attributes :id, :uid, :dish_number, :status
  has_one :customer
  has_one :time_unit
  has_one :account
end
