class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    # @products = Product.all.page(params[:page]).per(15).order('created_at DESC')
    @products = Product.search(params[:search]).page(params[:page]).per(15).order('created_at DESC')
  end

  def search
    @search = params[:search]
    render "index"
  end
end
