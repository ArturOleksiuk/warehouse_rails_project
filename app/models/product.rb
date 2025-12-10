class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :customers, through: :orders

  validates :name, presence: true, length: { minimum: 3 }
  validates :price, numericality: { greater_than: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
