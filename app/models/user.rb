class User < ApplicationRecord
    has_secure_password
    has_many :users
    has_many :reviews
    validates :email, uniqueness: true

    
end
