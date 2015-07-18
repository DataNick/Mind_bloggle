class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.build(post_params)
  end

  def create
  	@post = Post.build(params[:post])
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  private

  def post_params

  end

end
