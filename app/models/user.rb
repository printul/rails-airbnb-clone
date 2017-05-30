class User < ApplicationRecord
  attr_accessor :my_bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :services
  has_many :bookings
  validates :first_name, :last_name, :address, presence: true
  validates :first_name, :last_name, length: { maximum: 50 }

  def my_bookings
    @user = User.find(id)
    return @user.services.map { |service| service.bookings }
  end
end
