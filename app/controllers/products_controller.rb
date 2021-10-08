class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    @products = Product.all.page(params[:page]).per(8).order('created_at DESC')
  end

  def search
    @product = Product.search(params[:search])
    @search = params[:search]
    render "index"
  end
end
