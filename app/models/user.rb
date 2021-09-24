  class User < ApplicationRecord
  with_options presence: true do
    validates :password, format: { with: /\A[a-z0-9]+\z/ }, length: { in: 6..15 }
    validates :last_name, length: { maximum: 10 }
    validates :first_name, length: { maximum: 10 }
    validates :zipcode, format: { with: /\A\d{3}\d{4}\z/ }, length: { is: 8 }
    validates :prefecture, length: { maximum: 5 }
    validates :municipality, length: { maximum: 10 }
    validates :address, length: { maximum: 15 }
    validates :apartments, length: { maximum: 20 }
    validates :email, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }
    validates :phone_number, format: { with: /\A\d+\z/ }, length: { maximum: 15 }
  end
  belongs_to :user_classification
  has_many :products
  end
