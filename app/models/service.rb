class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_attachments :photos, maximum: 3
  # validates :name, :description, :daily_rate, :is_active, presence: true
  # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # validates :name, length: { maximum: 50 }
  # validates :description, length: { maximum: 1000 }
  # validates :daily_rate, numericality: true
  # validates :is_active, inclusion: { in: [true, false] }
end
