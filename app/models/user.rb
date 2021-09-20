class User < ApplicationRecord
    belongs_to :user_classification
    validates :password,    length: { in: 6..15 }
    validates :last_name,    length: { maximum: 10 }
    validates :first_name,    length: { maximum: 10 }
    validates :zipcode, length: { is: 7 }
    validates :prefecture,    length: { maximum: 5 }
    validates :municipality,    length: { maximum: 10 }
    validates :address,    length: { maximum: 15 }
    validates :apartments,    length: { maximum: 20 }
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :phone_number,    length: { maximum: 15 }
end
