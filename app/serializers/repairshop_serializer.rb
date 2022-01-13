class RepairshopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :street, :city, :state, :zip_code
end
