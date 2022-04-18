class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :password, presence: true
  has_secure_password
end
