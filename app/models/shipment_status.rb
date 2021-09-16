class ShipmentStatus < ApplicationRecord
  has_many :order_detail, dependent: :destroy
end
