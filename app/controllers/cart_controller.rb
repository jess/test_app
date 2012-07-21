class CartController < ApplicationController
  def show
    @cart = session[:cart] ||= Cart.new
  end

  def edit
    product = Product.find(params[:id])
    @cart = session[:cart] ||= Cart.new
    @cart.add product
    redirect_to cart_path, :notice => "Product Added"
  end
end
