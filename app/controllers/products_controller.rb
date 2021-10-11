class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    @products = Product.all.page(params[:page]).per(2).order('created_at DESC')
  end
end
