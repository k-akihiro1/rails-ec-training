class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy

  def total_price
    order_details.sum(&:sub_tatal)
  end

  def order_status
    if order_details.any? {|order_detail| order_detail.shipment_status.shipment_status_name == "準備中"}
      "準備中"
    else
      "発送中"
    end
  end
end
