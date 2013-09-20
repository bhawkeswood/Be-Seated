class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to restaurants_url, :notice => 
  		"You have become a registered user!"
  	else
  		render "new"
  	end
  end
end