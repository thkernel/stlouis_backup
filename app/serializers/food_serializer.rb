# == Schema Information
#
# Table name: foods
#
#  id               :bigint           not null, primary key
#  uid              :string
#  slug             :string
#  food_category_id :bigint
#  name             :string
#  min_cooking_time :time
#  max_cooking_time :time
#  price            :float
#  descriptions     :string
#  status           :string
#  account_id       :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FoodSerializer < ActiveModel::Serializer
  attributes :id, :uid, :slug, :name, :min_cooking_time, :max_cooking_time, :price, :descriptions, :status
  has_one :account
end
