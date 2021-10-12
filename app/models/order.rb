class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy

  def total_price
    order_details.sum(&:sub_tatal)
  end
end
