class Repairshop < ApplicationRecord
  has_many :comments, through: :users
end
