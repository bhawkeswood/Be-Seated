class ReservationsController < ApplicationController
  def index
    
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.build
  end

  def show
    @reservation = Reservation.find(params[:id])
  end


  def create
       
    @restaurant = Restaurant.find(params[:restaurant_id]) 
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user_id = current_user.id 

    if @reservation.save
      flash[:notice] = "Your reservation at #{@reservation.restaurant.name} is confirmed"
     redirect_to 
    
    else
      flash[:notice] =  "Sorry you we are unable to accomodate you at that time, please try again!"
      render :new, :alert => "Sorry, the restaurant you selected is not open during this period"
      redirect_to restaurant_path(params[:restaurant_id])    
    end
end



  # def create
  #   @reservation = Reservation.new(params[:id])
  #   @reservation.save
  # end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :res_time)
 
  end
end
