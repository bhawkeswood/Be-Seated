class RestaurantsController < ApplicationController
  #hey this is just to test the shit out of this stuff
  
  def index 
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :price_range:, :menu_url)
  end
end
