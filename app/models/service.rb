class Service < ApplicationRecord
  belongs_to :user
  has_many :showcase_works, dependent: :destroy
  has_many :bookings
end
