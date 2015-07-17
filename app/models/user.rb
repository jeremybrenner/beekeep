class User < ActiveRecord::Base

  has_many :swarms

  has_secure_password

  validates :first_name, 
            :presence => true
  validates :last_name, 
            :presence => true
  validates :username,
            :presence => true,
            :uniqueness => true
  validates :address, 
            :presence => true
  validates :phone,
            :presence => true, 
            :uniqueness => true,
            :numericality => true
  validates :password,
            :presence => true,
            :confirmation => true,
            :length => { :minimum => 6, :maximum => 15 }
  validates :password_confirmation, 
            :presence => true,
            :length => { :minimum => 6, :maximum => 15 }
  validates :email,
            :presence => true,
            :uniqueness => true



  def self.confirm(params)
    user = self.find_by!(username: params[:username])
    user.authenticate(params[:password])
  end

end
