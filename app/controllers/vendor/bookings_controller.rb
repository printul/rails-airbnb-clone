class Vendor::BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :show]
  before_action :set_service, only: [:new, :create]

  def index
    @bookings = current_user.my_vendor_bookings
  end

  def show
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      days_booked = (@booking.end_date - @booking.start_date).to_i
      @booking.total_cost = days_booked * @booking.service.daily_rate
      @booking.save
      redirect_to vendor_booking_path(@booking)
    else
      render 'vendor/bookings/edit'
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :order_status)
  end

end
