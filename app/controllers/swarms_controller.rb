class SwarmsController < ApplicationController

  def new
    @swarm = Swarm.new
  end

  def create
    @swarm = Swarm.create!(swarm_params)
    Swarm.send_swarm_notice(swarm_params)
    redirect_to ('/')
  end

  def show
  end

  def assign_swarm
    @swarm = Swarm.find(params[:id])
    @swarm.assigned = true
    current_user.swarms.push(@swarm)
    redirect_to '/dashboard'
  end

  private

  def swarm_params
    params.require(:swarm).permit(:name, :email, :phone, :description, :location, :user_id)
  end

end
