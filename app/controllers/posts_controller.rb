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
		@post = @retailer.posts.create(post_params)
		if @post.save
			redirect_to retailer_path(@retailer)
		end
	end

	def edit
		@retailer = Retailer.find(params[:retailer_id])
		@post = @retailer.posts.find(params[:id])
	end

	def update
		@retailer = Retailer.find(params[:retailer_id])
		@post = @retailer.posts.find(params[:id])
		if @post.update(post_params)
			flash[:update] = "Post has been updated."
			redirect_to retailer_post_path
		end
	end

	def destroy
		@retailer = Retailer.find(params[:retailer_id])
		@post = @retailer.posts.find(params[:id])
		@post.destroy
		flash[:notice] = "The post has been deleted."
		redirect_to retailer_path(@retailer)
	end

	private

	def post_params
		params.require(:post).permit(:season_id, :deadline)
	end

end