# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  slug                :string
#  product_category_id :bigint
#  name                :string
#  unity_id            :bigint
#  bar_code            :string
#  unit_price          :float
#  provider_id         :bigint
#  reorder_threshold   :float
#  current_stock       :float
#  description         :string
#  account_id          :bigint
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :uid, :slug, :name, :bar_code, :unit_price, :reorder_threshold, :current_stock, :description, :status
  has_one :product_category
  has_one :provider
  has_one :account
end
