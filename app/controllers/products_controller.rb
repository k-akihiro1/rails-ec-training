class ProductsController < ApplicationController
  def show
    @product = Product.find(id: params[:id])
  end

  def index
    @products = Product.page(params[:page]).per(8).order('created_at DESC')
  end
end
