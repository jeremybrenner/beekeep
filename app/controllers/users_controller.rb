class UsersController < ApplicationController

  before_action :require_login, except: [:new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      login(@user)
      redirect_to "/dashboard"
    else
      redirect_to signup_path, error: @user.errors.full_messages.to_sentence
    end
  end

  def show
    redirect_to "/dashboard"
  end

  def dashboard
    @swarms = Swarm.all
    if defined? current_user.swarms 
      @userswarms = current_user.swarms
    end
    @current_user = current_user
    @hash = Gmaps4rails.build_markers(@swarms) do |swarm, marker|
      marker.lat swarm.latitude
      marker.lng swarm.longitude
      marker.picture "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png"
      marker.infowindow swarm.description
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :phone, :address)
    end

end
