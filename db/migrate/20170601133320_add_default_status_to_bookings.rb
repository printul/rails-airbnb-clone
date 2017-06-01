class AddDefaultStatusToBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :order_status, :string, default: "Pending"
  end
end
