class Notification < ApplicationRecord
		# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

	belongs_to :notificable, polymorphic: true

  	belongs_to :account, :foreign_key => "recipient_id", :class_name => "Account"


end
