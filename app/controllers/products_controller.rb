class ProductsController < ApplicationController
  def index
  end

  def add
    @product = params[:product]
    cart << @product
  end

end
