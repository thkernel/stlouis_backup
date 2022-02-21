class CustomerSocialCase < ApplicationRecord
   # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid, :set_status

  belongs_to :customer
  belongs_to :time_unit
  belongs_to :account

  # Change default params ID to uid
  def to_param
    uid
  end

  def set_status
    unless self.status.present?
      self.status = "Actif"
    end
  end
end
