class PostsController < ApplicationController

	def index
		@retailer = Retailer.find(params[:retailer_id])
		@posts = @retailer.posts.all
	end

	def show
		@retailer = Retailer.find(params[:retailer_id])
		@post = Post.find(params[:id])
		@nonprofit = @post.nonprofit_id
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

	def claim
		@retailer = Retailer.find(params[:retailer_id])
		@post = Post.find(params[:post_id])
		current_nonprofit.posts << @post
		@post.nonprofit_id = current_nonprofit.id
		@post.save
		redirect_to retailer_post_path(@retailer, @post)
	end

	def pickup
		@retailer = Retailer.find(params[:retailer_id])
		@post = Post.find(params[:post_id])
		@post.picked_up = true
		@post.save
		redirect_to retailer_post_path(@retailer, @post)
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
		params.require(:post).permit(:description, :season_id, :deadline, :img)
	end

end