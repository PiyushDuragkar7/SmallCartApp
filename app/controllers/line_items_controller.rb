class LineItemsController < ApplicationController

  def create
    @cart = Cart.find_or_create_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= @cart.id
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.build(product: product, quantity: params[:quantity])

    if @line_item.save
      redirect_to @cart, notice: 'Item added to cart.'
    else
      redirect_to products_path, alert: 'Could not add item.'
    end
  end

  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(quantity: params[:quantity])
    redirect_to cart_path(session[:cart_id])
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(session[:cart_id])
  end
end
