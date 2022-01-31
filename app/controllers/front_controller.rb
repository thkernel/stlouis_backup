class FrontController < ApplicationController
	layout "front"

	def home
		@products = Product.order(created_at: :desc).paginate(:page => params[:page], :per_page => 8)
	end
end