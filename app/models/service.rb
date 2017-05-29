class Service < ApplicationRecord
  belongs_to :user
  has_many :showcase_works
  has_many :bookings
end
