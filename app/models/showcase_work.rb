class ShowcaseWork < ApplicationRecord
  belongs_to :service
  validates :name, :url, presence: true
  validates :name, length: { maximum: 50 }
  validates :description, length: { maximum: 1000 }
end
