class Product < ApplicationRecord
  belongs_to :user
  belongs_to :product_status
  belongs_to :sale_status
  belongs_to :category
  has_many :purchases, dependent: :destroy
end
