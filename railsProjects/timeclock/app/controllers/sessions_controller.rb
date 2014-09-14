class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:username], params[:password])
  	if user.present?
  		session[:user_id] = user.id
  		redirect_to '/home'
  	else
  		redirect_to '/login', notice: "Invalid username or password."
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/login', notice: "Logged out"
  end
end
