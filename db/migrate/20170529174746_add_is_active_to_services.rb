class AddIsActiveToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :is_active, :boolean, default: true
  end
end
