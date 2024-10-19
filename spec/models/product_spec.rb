require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { described_class.new(name: "Sample Product", price: 10.50, stock_quantity: 5) }

  it 'is valid with a valid name' do
    expect(subject).to be_valid
  end

  it 'is valid with a positive price' do
    subject.price = 10.50
    expect(subject).to be_valid
  end

  it 'is not valid with a negative price' do
    subject.price = -10.50
    expect(subject).to_not be_valid
  end

  it 'is valid with a non-negative stock quantity' do
    subject.stock_quantity = 5
    expect(subject).to be_valid
  end

  it 'is not valid with a negative stock quantity' do
    subject.stock_quantity = -1
    expect(subject).to_not be_valid
  end
end
