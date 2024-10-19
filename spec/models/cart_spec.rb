require 'rails_helper'

RSpec.describe Cart, type: :model do
  it 'can have many line items' do
    cart = Cart.create
    product = Product.create(name: "Test Product", price: 50, stock_quantity: 10)
    line_item1 = LineItem.create(cart: cart, product: product, quantity: 2)
    line_item2 = LineItem.create(cart: cart, product: product, quantity: 3)

    expect(cart.line_items).to include(line_item1, line_item2)
  end
end
