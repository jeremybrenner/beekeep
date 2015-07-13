class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    login(@user)
    redirect_to "/dashboard"
  end

  def show
  end

  def dashboard
    @swarms = Swarm.all
    if defined? current_user.swarms 
    @userswarms = current_user.swarms
  end
    @current_user = current_user
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :phone, :location)
    end

end
