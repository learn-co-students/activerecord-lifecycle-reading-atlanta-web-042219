class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(title: params[:title], description: params[:description])
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(params.require(:post).permit(title: params[:title], description: params[:description]))
	  redirect_to edit_post_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end



end

