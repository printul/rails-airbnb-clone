class Vendor::ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = current_user.services
  end

  def show

  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to vendor_services_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @service.update(service_params)
      redirect_to vendor_service_path(@service)
    else
      render :new
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :user_id, :daily_rate, :is_active, :category, photos: [])
  end

end
