class User < ActiveRecord::Base #500+ methods
    has_many :favorites
    has_many :movies, through: :favorites
    has_secure_password #password, password=, authenticate, passowrd_confirmation ...
    validates :username, :email, presence: true, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
