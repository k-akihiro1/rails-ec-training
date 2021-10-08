class Product < ApplicationRecord
  belongs_to :user
  belongs_to :product_status
  belongs_to :sale_status
  belongs_to :category
  has_many :purchases, dependent: :destroy
  def self.search(search)
    if search
      Product.where(['product_name LIKE ?', "%#{search}%"])
    else
      Product.all
    end
  end
end
