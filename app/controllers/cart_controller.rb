class CartController < ApplicationController
  def index
    @cart = session[:cart] ||= Cart.new
  end

  def edit
    product = Product.find(params[:id])
    @cart = session[:cart] ||= Cart.new
    @cart.add product
    redirect_to cart_index_path, :notice => "Product Added"
  end

  def destroy
    product = Product.find(params[:id])
    @cart = session[:cart] ||= Cart.new
    @cart.remove product
    redirect_to cart_index_path, :notice => "Product Removed"
  end
end
