class CommentsController < ApplicationController
	
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)

		redirect_to post_path(@post)
		# if @comment.save
		# 	redirect_to @post
		# else
		# 	flash.now[:danger] = "error"
		# 	redirect_to @comment.post
		# end
	end



	private
	def comment_params
		params.require(:comment).permit(:name, :body)
	end

	 
end
