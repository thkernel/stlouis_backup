# == Schema Information
#
# Table name: providers
#
#  id           :bigint           not null, primary key
#  uid          :string
#  company_name :string
#  first_name   :string
#  last_name    :string
#  civility     :string
#  address      :string
#  country      :string
#  city         :string
#  phone        :string
#  street       :string
#  po_box       :string
#  zip_code     :string
#  description  :string
#  status       :string
#  account_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :civility, :address, :country, :city, :phone, :street, :po_box, :zip_code, :description, :status
  has_one :account
end
