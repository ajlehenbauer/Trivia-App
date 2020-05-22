class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 25}, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, confirmation: true, length: { minimum: 6 }

end
