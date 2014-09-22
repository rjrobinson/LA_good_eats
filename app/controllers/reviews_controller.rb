class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


  def create
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = @restaurant.reviews.create(review_params)
      redirect_to restaurant_path(@restaurant)
  end

  private
    def review_params
      params.require(:review).permit(:rating, :body )
    end



end
