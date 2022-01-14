# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  uid         :string
#  slug        :string
#  name        :string
#  description :string
#  account_id  :bigint
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :uid, :slug, :name, :description, :status
  has_one :account
end
