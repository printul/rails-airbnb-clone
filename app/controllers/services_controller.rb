class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:category]
      @services = Service.where(:category => params[:category])
    else
      @services = Service.all
    end
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end
end
