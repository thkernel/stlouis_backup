# == Schema Information
#
# Table name: public.tenants
#
#  id                :bigint           not null, primary key
#  uid               :string
#  organization_name :string
#  address           :string
#  phone             :string
#  country           :string
#  city              :string
#  email             :string
#  website           :string
#  subdomain         :string
#  status            :string
#  account_id        :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class TenantSerializer < ActiveModel::Serializer
  attributes :id, :uid
end
