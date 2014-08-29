class HomeController < ApplicationController
	def index
		if !session[:user_id].present?
			redirect_to '/login'
		end
	end
end
