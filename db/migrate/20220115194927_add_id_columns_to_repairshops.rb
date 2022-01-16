class AddIdColumnsToRepairshops < ActiveRecord::Migration[6.1]
  def change
    add_column :repairshops, :user_id, :integer
    add_column :repairshops, :comment_id, :integer
  end
end
