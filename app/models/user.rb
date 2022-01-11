class User < ApplicationRecord
  has_secure_password
  has_many :comments, through: :repairshop

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
