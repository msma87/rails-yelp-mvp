class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(restaurant_params)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create!
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
