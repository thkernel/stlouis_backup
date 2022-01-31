class Partner < ApplicationRecord
  belongs_to :account


  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid


  def full_name
    "#{first_name} #{last_name}"
  end
  

	# Change default params ID to uid
  def to_param
    uid
  end


  # Validations
  #validates :company_name,   uniqueness: true
  

  def partner_name
    if self.company_name.present?
      "#{company_name}"
    else
      "#{last_name} #{first_name}"
    end
  end
  
end
