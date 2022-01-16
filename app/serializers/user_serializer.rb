class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :repairshops, serializer: RepairshopSerializer
  # belongs_to :comments
end
