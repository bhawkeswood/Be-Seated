class RestaurantsController < ApplicationController
  
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
    @restaurant = Restaurant.new
  end

  def edit
  end

  def update
  end

  def delete
  end
end
