class Comment < ApplicationRecord
  belongs_to :user
  has_many :users, through: :repairshop
end