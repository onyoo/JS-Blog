class PostsController < ApplicationController
  before_action :require_user, only: [:show, :new, :create]

  def index
    @posts = Post.order(created_at: :desc).page(params[:page])
  end

  def new
    @post = Post.new
    render 'new.js', layout: false
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      render 'create.js', status: 201
    else
      render 'error.js'
    end
  end

  def edit
    @post = Post.find(params[:id])
    render 'new.js', layout: false
  end

  def update
    @post = Post.find(params[:id])
    authorize @post # extra layer of authorization
    if @post.update(post_params)
      render 'edit.js', status: 201
    else
      render 'error.js'
    end
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
