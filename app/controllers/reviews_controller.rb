class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurants.find(params[:restaurant_id])
  end


  def create
      @restaurant = Restaurants.find(params[:restaurant_id])
      @review = @restaurant.reviews.create(review_params)
      redirect_to restaurant_path(@restaurant)
  end

  private
    def review_params
      params.require(:review).permit(:rating, :review, :reviewer )
    end



end




def create
    @restaurants = Restaurants.find(params[:restaurant_id])
    @review = @restaurant.review.create(review_params)
    redirect_to restaurant_path(@restaurant)
end
