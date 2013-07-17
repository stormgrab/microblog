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

	private
	def find_post
		@post = Post.find(params[:post_id])
	end

	private
	def find_comment
		@comment = Comment.find(params[:id])
	end
end
