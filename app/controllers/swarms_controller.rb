class SwarmsController < ApplicationController

  before_action :has_swarm_access?, only: [:show, :edit, :delete]

  def new
    @swarm = Swarm.new
  end

  def create
    @swarm = Swarm.create(swarm_params)
    if @swarm.save
      redirect_to root_path
    else
      redirect_to new_swarm_path, error: @swarm.errors.full_messages.to_sentence 
    end
  end

  def show
  end

  def assign_swarm
    @swarm = Swarm.find(params[:id])
    @swarm.assigned = true
    current_user.swarms.push(@swarm)
    redirect_to "/dashboard"
  end

  def deactivate
    @swarm = Swarm.find(params[:id])
    @swarm.toggle(:active_status)
    @swarm.save
    redirect_to "/dashboard"
  end

  def reactivate
    @swarm = Swarm.find(params[:id])
    current_user.swarms.delete(@swarm)
    @swarm.assigned = false
    @swarm.save
    redirect_to "/dashboard"
  end

  private

  def swarm_params
    params.require(:swarm).permit(:name, :email, :phone, :description, :address, :user_id, :id)
  end

end
