class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
  end

  def edit
    @comment = Comment.new
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@comment.post)
  end

  def delete
    Comment.destroy(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html { render }
      format.json { render json: @comment }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end

end
