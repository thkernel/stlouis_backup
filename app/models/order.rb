# == Schema Information
#
# Table name: orders
#
#  id             :bigint           not null, primary key
#  uid            :string
#  customer_id    :bigint
#  table_id       :bigint
#  subtotal       :float            default(0.0)
#  total          :float            default(0.0)
#  tax            :float            default(0.0)
#  shipping       :float            default(0.0)
#  status         :string
#  paid           :string
#  payment_method :string
#  account_id     :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ApplicationRecord
	# Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid, :set_total, :set_status, :set_payment_status

  belongs_to :customer
  belongs_to :account
  belongs_to :table, optional: :true

  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items ,  allow_destroy: true , :reject_if => :no_order_items

	# Change default params ID to uid
  def to_param
    uid
  end

  def no_order_items(attributes)
   attributes[:food_id].blank?
  end



  def subtotal
    order_items.collect {|order_item| order_item.valid? ? (order_item.price*order_item.quantity) : 0}.sum
  end

  private
    def set_total
      puts "SUBTOTAL: #{subtotal}"
      self[:subtotal] = subtotal
      self[:total] = subtotal
    end

    def set_status
      unless self.status.present?
        self.status = "En attente"
      end

      
    end

    def set_payment_status
      unless self.paid.present?
        self.paid = "Impayée"
      end
    end
    
  
  
end
