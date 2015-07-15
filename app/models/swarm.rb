class Swarm < ActiveRecord::Base

  belongs_to :user

  geocoded_by :address

  after_validation :geocode

  validates :name, 
            :presence => true
  validates :email, 
            :presence => true,
            :uniqueness => true
  validates :phone, 
            :presence => true,
            :uniqueness => true
  validates :description, 
            :presence => true
  validates :address, 
            :presence => true


    # a modular function to allow modification of how these numbers
    # are collected in the future
    # def gather_numbers
    #   @numbers = []
    #   users = User.all
    #   users.each do |user|
    #     @numbers.push(user.phone)
    #   end
    # end

    # this actually constructs the SMS notifcation and sends it
  def self.send_swarm_notice(params)


        # this constructs an object that holds all the numbers
        # to recieve notification. This needs to be cleaned up.
        @numbers = []
        users = User.all
        users.each do |user|
          @numbers.push(user.phone)
        end

        @numbers.each do |number|
        number_to_send_to = "+1#{number}"

        twilio_sid = ENV["twilio_sid"]
        twilio_token = ENV["twilio_token"]
        twilio_phone_number = ENV["twilio_phone_number"]

        @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

        @twilio_client.messages.create(
              :from => twilio_phone_number,
              :to => number_to_send_to,
              :body => "#{params}"
          )
    end
  end

end
