module SessionsHelper

  def login(user)
    session[:user_id]= user.id
    @current_user = user
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    if !logged_in?
      redirect_to "/"
    end 
  end

end
