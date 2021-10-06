class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    @product = Product.all.page(params[:page]).per(8).order('created_at DESC')
  end
end
