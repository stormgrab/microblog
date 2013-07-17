class CommentsController < ApplicationController
	before_filter :find_post
	before_filter :find_comment, :only => [:edit , :update , :destroy]

	def new
		@comment = @post.comments.build
	end

	def create
		@comment = @post.comments.build(params[:comment])

		if @comment.save
			redirect_to @post,:notice => "Comment added successfully"
		else
			render :action => "new"
		end
	end

	def edit

	end

	def update
		if @comment.update_attributes(params[:comment])
			redirect_to @post, :notice => "Comment edited successfully"
		else
			render :action => "new"
		end
	end

	def destroy
		@comment.destroy
		redirect_to @post, :notice => "Comment deleted"
	end
	
	private
	def find_post
		@post = Post.find(params[:post_id])
	end

	private
	def find_comment
		@comment = Comment.find(params[:id])
	end
end
