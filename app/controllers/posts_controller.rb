class PostsController < ApplicationController
	before_filter :find_post, :only => [:edit,:update,:show,:destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to @post, :notice => "Post has been successfully created"
		else
			flash[:alert] = "Post creation failed"
			render :action => "new"
		end
	end

	def edit

	end

	def update
		if @post.update_attributes(params[:post])
			redirect_to @post, :notice => "Post edited successfully"
		else
			flash[:alert] = "Could not edit post"
			render :action => "edit"
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path , :notice => "Post has been deleted"
	end

	private
	def find_post
		@post = Post.find(params[:id])
	end
end
