# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  first_name :string
#  last_name  :string
#  sex        :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :sex, :status
  has_one :role
end
