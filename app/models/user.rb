class User < ApplicationRecord
    has_many :user_classifications, dependent: :destroy
end
