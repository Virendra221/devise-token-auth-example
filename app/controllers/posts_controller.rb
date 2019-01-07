class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    binding.pry
    @post = Post.new(post_params)
    @post.save
    render json: @post
  end

  def edit
    @post = Post.find(params[:id])
    render json: @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:post][:title], description: params[:post][:description])
    @posts = Post.all
    render json: @posts
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @posts = Post.all
    render json: @posts
  end

  def post_params
     params.require(:post).permit(:title, :description)
  end

end
