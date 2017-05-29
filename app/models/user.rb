class User < ApplicationRecord
  attr_accessor :my_bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :services
  has_many :bookings

  def my_bookings
    @user = User.find(id)
    return @user.services.map { |service| service.bookings }
  end
end
