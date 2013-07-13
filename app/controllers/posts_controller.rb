class PostsController < ApplicationController
	before_filter :find_post, :only => [:edit,:update,:show,:delete]

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

	private
	def find_post
		@post = Post.find(params[:id])
	end
end
