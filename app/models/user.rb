class User < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :username, presence: true, uniqueness: true
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true

    before_save { self.email = email.downcase }
    before_save { self.username = email.downcase }

    has_secure_password
end
