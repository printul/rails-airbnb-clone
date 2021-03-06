class Booking < ApplicationRecord
  ORDER_STATUSES = ["Pending", "Accepted", "Awaiting Payment", "In Progress", "Completed", "Declined", "Cancelled"]
  RATINGS = [1, 2, 3, 4, 5]
  belongs_to :user
  belongs_to :service
  # validates :start_date, :end_date, :order_status, :total_cost, presence: true
  # validates :order_status, presence: true
  validates :order_status, inclusion: { in: ORDER_STATUSES }
end
