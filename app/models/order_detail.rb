class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :shipment_status
  belongs_to :product

  def sub_tatal
    product.price * order_quantity
  end
end
