class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  before_action :review_params, only: [:create]
  def create
    @service = Service.find(params[:service_id])
    @review = Review.new(review_params)
    @review.service = @service
    if @review.save
      respond_to do |format|
        format.html { redirect_to service_path(@service) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'services/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
