class PartnerSerializer < ActiveModel::Serializer
  attributes :id, :uid, :company_name, :first_name, :last_name, :civility, :address, :city, :country, :phone, :email, :description, :status
  has_one :account
end
