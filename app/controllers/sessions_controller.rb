class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    session[:user_id] = @user.id
    redirect_to posts_path
  end

end
