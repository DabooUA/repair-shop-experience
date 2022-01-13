class User < ApplicationRecord
  has_secure_password
  validates :name, :username, presence: true
  validates :username, uniqueness: true

  has_many :comments
  has_many :repairshops
  
end
