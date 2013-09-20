class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.user_id 
  		redirect_to restaurants_url, :notice => "You are now logged in!"
  	else
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to restaurants_url, :notice => "See you later!"
  end
end
