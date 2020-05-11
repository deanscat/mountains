class User < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :username, presence: true, uniqueness: true
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true

    before_save { self.email = email.downcase }
    before_save { self.username = username.downcase }

    has_secure_password
    has_many :comments
    has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "app/assets/images/stick-figure1.jpg"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
