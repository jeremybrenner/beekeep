class SessionsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :login_error

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(sessions_params) 
    login(@user)
    redirect_to "/dashboard"
    flash[:notice] = "You successfuly logged in #{@user.username}!"
  end

  def destroy
    logout
    redirect_to "/"
  end

  protected

  def login_error(e)
    flash[:loginerr] = "Incorrect login, please try again!"
    redirect_to login_path
  end

  private 

  def sessions_params
    params.require(:user).permit(:username, :password)
  end

end
