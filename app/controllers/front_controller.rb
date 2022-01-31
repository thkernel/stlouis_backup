class FrontController < ApplicationController
	layout "front"

	def home
		@foods = Food.order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
	end
end