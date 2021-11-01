class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.page(params[:page]).per(15).order("created_at DESC")
  end
end
