class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
  	@posts = Post.all.order('created_at DESC')
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	# @post = Post.build(post_params)
  end

  def create
  	@post = Post.new(post_params)
  	@post.save

  	redirect_to @post
  
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.detroy
    redirect_to posts_path
  end

  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end

end
