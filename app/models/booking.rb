class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :order_status, inclusion: { in: ["Pending", "Awaiting Payment", "Completed", "Declined", "Accepted"] }
end
