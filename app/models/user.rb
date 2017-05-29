class User < ApplicationRecord
  attr_accessor :my_bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :services
  has_many :bookings

  def my_bookings
    @my_bookings = User.find(id)
    return @my_bookings.services.map do |service|
      service.bookings
    end
  end
end
