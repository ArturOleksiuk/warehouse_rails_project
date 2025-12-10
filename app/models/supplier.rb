class Supplier < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one :account

  validates :company_name, presence: true, uniqueness: true
  validates :contact_name, length: { minimum: 2 }
end
