class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:username], params[:password])
  	if user
  		session[:user_id] = user.id #???
      puts user.username
  		redirect_to "/home/index"
  	else
  		redirect_to "/sessions/new", notice: "Invalid username or password" #{}"http://localhost:3000/home/index", alert: "Invalid username or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_url, notice: "Logged out"
  end
end
