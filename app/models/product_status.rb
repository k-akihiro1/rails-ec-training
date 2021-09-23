class ProductStatus < ApplicationRecord
  has_many :product, dependent: :destroy
end
