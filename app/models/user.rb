class User < ActiveRecord::Base

  has_many :swarms

  has_secure_password

  validates :first_name, 
            :presence => true
  validates :last_name, 
            :presence => true
  validates :username,
            :presence => true
  validates :address, 
            :presence => true
  validates :phone,
            :presence => true 
  validates :password,
            :presence => true
  validates :email,
            :presence => true



  def self.confirm(params)
    user = self.find_by!(username: params[:username])
    user.authenticate(params[:password])
  end

end
