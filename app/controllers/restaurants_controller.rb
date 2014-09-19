class RestaurantsController < ApplicationController


####################
  # Method / Routes
####################

  def index
    @restaurants = Restaurants.all
  end


  def show
    @restaurants = Restaurants.find(params[:id])
  end

  def new
    @restaurants = Restaurants.new
  end


end # of class
