class PostsController < ApplicationController

	def index
		@retailer = Retailer.find(params[:retailer_id])
		@posts = @retailer.posts.all
	end

	def show
		@retailer = Retailer.find(params[:retailer_id])
		@post = @retailer.posts.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@retailer = current_retailer
		@post = @retailer.posts.new(post_params)
		if @post.save
			redirect_to retailer_post_path
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def post_params
		params.require(:post).permit(:season_id, :deadline)
	end

end