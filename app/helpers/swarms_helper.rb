module SwarmsHelper

  def has_swarm_access?
    user = current_user ? current_user : User.new
    if user.swarms.include?(Swarm.find(params[:id]))
      puts "***********This belongs to the current user**********"
    else
      puts "!!!!!!!!ACCESS DENIED!!!!!!!!"
    end
    redirect_to "/dashboard"
  end

end
