class Product < ApplicationRecord
  has_many :line_items

  validates :price, numericality: { greater_than: 0 }
  validates :stock_quantity, numericality: { greater_than_or_equal_to: 0 }
end
