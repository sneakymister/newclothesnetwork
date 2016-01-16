class RetailersController < ApplicationController

	def show
		@retailer = Retailer.find(params[:id])
		@posts = @retailer.posts
	end

end