# == Schema Information
#
# Table name: recharge_fidelity_cards
#
#  id               :bigint           not null, primary key
#  uid              :string
#  fidelity_card_id :bigint
#  amount           :float            default(0.0)
#  status           :string
#  account_id       :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RechargeFidelityCard < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid, :raise_card_balance

  belongs_to :account
  belongs_to :fidelity_card


	# Change default params ID to uid
  def to_param
    uid
  end

  private

  def raise_card_balance

  	card = FidelityCard.find(self.fidelity_card_id)
  	amount = self.amount.to_f

  	puts "CURRENT STOCK: #{self.amount}"

  	if card.present? && amount > 0.0

  		if card.balance.present?

  		current_balance = card.balance + amount
  	else
  		current_balance =  amount
  	end
  		card.update_column(:balance, current_balance);
  	end

    set_status
  end

  def set_status
    

    unless self.status.present?
      
      self.status = "Confirmée"
    end
  end
  
end
