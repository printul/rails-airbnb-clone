class BookingsController < ApplicationController
  def index
    @bookings = Booking.where("user_id = ?", params[:user_id] )
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end
end
