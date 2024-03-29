class RestaurantsController < ApplicationController


####################
  # Method / Routes
####################

  def index
    @restaurants = Restaurant.order(created_at: :desc).limit(10)
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end




private


  # this is so that people cant break in and hack your stuff. follow the format!

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :city, :state, :zip_code, :address)
  end


end # of class
