class AddTotalCostToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :total_cost, :float
  end
end
