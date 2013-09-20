class ReservationsController < ApplicationController
  def index
    
  end

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(params[:id])
    @reservation.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

 
end
