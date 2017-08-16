class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all # to see the list of all restaurants
  end

  def show # to see one specific restaurant (with all it's details and reviews)
  end

  def new # step before create
    @restaurant = Restaurant.new
  end

  def create # create a new restaurant
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) # to see one specific restaurant
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
