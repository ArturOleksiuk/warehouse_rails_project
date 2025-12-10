class Customer < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  validates :name, presence: true
  validates :address, presence: true
  validates :client_type, inclusion: { in: ['Звичайний', 'VIP', 'Гуртовий', 'Партнер'] }
end
