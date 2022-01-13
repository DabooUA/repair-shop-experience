class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :repairshops

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
