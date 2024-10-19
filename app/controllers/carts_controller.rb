class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  private

  def current_cart
    Cart.find(session[:cart_id]) rescue Cart.create.tap { |cart| session[:cart_id] = cart.id }
  end
end
