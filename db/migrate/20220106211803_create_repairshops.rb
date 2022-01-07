class CreateRepairshops < ActiveRecord::Migration[6.1]
  def change
    create_table :repairshops do |t|
      t.string :repair_shop_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
