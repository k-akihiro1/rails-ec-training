class Product < ApplicationRecord
  belongs_to :user
  belongs_to :product_status
  belongs_to :sale_status
  belongs_to :category
  has_many :purchases, dependent: :destroy
  def self.search(search,category_id)
    products = Product.all
    products = products.where(['product_name LIKE ?', "%#{search}%"]) if search.present?
    products = products.where(['category_id = ?', category_id]) if category_id.present?
    products
  end
end
