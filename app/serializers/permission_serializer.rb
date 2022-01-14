# == Schema Information
#
# Table name: permissions
#
#  id         :bigint           not null, primary key
#  uid        :string
#  feature_id :bigint
#  role_id    :bigint
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :feature
  has_one :role
end
