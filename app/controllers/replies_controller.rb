class RepliesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment][:comment_id])
    @reply = @comment.replies.create(reply_params)
    if @comment.valid?
      render 'create.js', layout: false
    else
      render noting: true, status: 400
    end
  end

private

  def reply_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

end
