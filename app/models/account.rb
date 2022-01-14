# == Schema Information
#
# Table name: accounts
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  login                  :string
#  slug                   :string
#  role_id                :bigint           not null
#  status                 :string
#  accountable_type       :string
#  accountable_id         :bigint
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Account < ApplicationRecord
  include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


# Relationships
  belongs_to :accountable, polymorphic: true, optional: true

   belongs_to :role

   has_many :food_categories, dependent: :destroy
   has_many :product_categories, dependent: :destroy
   has_many :foods, dependent: :destroy
   has_many :products, dependent: :destroy
   has_many :customers, dependent: :destroy
   has_many :providers, dependent: :destroy
   has_many :stock_entries, dependent: :destroy
   has_many :stock_exits, dependent: :destroy
   has_many :tables, dependent: :destroy
   has_many :fidelity_cards, dependent: :destroy

   # Change default params ID to uid
  def to_param
    uid
  end
  
end
