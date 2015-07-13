class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to "/dashboard"
  end

  def show
  end

  def dashboard
    @swarms = Swarm.all
    @userswarms = current_user.swarms
    @current_user = current_user
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
    end

end
