class SetDefaultIsActive < ActiveRecord::Migration[5.0]
  def change
    change_column :services, :is_active, :boolean, default: true
  end
end
