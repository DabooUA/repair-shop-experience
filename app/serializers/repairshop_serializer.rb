class RepairshopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :repair_shop_name, :street_address, :city, :state, :zip_code
end
