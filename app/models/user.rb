class User < ActiveRecord::Base

  has_many :swarms

  has_secure_password

  def self.confirm(params)
    user = self.find_by!(username: params[:username])
    user.authenticate(params[:password])
  end

end
