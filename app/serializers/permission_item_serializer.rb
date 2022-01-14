# == Schema Information
#
# Table name: permission_items
#
#  id            :bigint           not null, primary key
#  uid           :string
#  permission_id :bigint
#  action_name   :string
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PermissionItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :action_name, :status
  has_one :permission
end
