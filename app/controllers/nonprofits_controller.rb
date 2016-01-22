class NonprofitsController < ApplicationController

	def show
		@nonprofit = Nonprofit.find(params[:id])
		@posts = @nonprofit.posts.all
	end

end