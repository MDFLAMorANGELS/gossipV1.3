class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true, length: { maximum: 2 }
end
