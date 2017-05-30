class BookingsController < ApplicationController
  before_action :set_user, only: [:index, :new, :create, :update]
  before_action :set_booking, only: [:create, :edit, :update, :show]
  before_action :set_service, only: [:new, :create, :update]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_cost, :order_status)
  end

end
