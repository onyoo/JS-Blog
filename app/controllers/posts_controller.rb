class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).page(params[:page])
  end

  def new
    @post = Post.new
    render 'new.js', layout: false
  end

  def create
    @post = Post.create(post_params)
    render 'create.js', status: 201
  end

  def edit
    @post = Post.find(params[:id])
    render 'new.js', layout: false
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    render 'edit.js', status: 201
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
