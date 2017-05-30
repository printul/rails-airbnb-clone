class Vendor::ServicesController < ApplicationController
  before_action :set_user, only: [:new, :show, :create, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @services = current_user.services
  end

  def show
    @service = current_user.services.find(params[:id])
  end

  def new
    raise
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to user_vendor_service_path(@user.service)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)

    else

    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :user_id, :daily_rate, :is_active)
  end

end
