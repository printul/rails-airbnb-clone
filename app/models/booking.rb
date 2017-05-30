class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :start_date, :end_date, :order_status, :total_cost, presence: true
end
