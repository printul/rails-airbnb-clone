class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :services, :bookings

  def my_bookings
    @my_bookings = User.services.map do |service|
      service.bookings
    end
    return @my_bookings
  end
end
