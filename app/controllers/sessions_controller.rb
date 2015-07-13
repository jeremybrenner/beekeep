class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(sessions_params)
    login(@user)
    redirect_to "/dashboard"
  end

  def destroy
    logout
    redirect_to "/"
  end

  private 

  def sessions_params
    params.require(:user).permit(:username, :password)
  end

end
