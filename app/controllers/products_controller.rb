class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    @products = Product.search(params[:search],params[:category_id]).page(params[:page]).per(15).order('created_at DESC')
  end

end
