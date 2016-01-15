class WelcomeController < ApplicationController

	def index
		@retailers = Retailer.all
		@nonprofits = Nonprofit.all
	end

end