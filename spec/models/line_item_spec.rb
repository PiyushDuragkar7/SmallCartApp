require 'rails_helper'

RSpec.describe LineItem, type: :model do
  let(:cart) { Cart.create }
  let(:product) { Product.create(name: "Test Product", price: 50, stock_quantity: 10) }
  let(:line_item) { LineItem.new(cart: cart, product: product, quantity: 2) }

  it 'is valid with a cart, product, and quantity' do
    expect(line_item).to be_valid
  end

  it 'is not valid without a quantity' do
    line_item.quantity = nil
    expect(line_item).to_not be_valid
  end

  it 'is not valid with a negative quantity' do
    line_item.quantity = -2
    expect(line_item).to_not be_valid
  end
end
