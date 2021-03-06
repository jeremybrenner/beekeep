class Swarm < ActiveRecord::Base

  belongs_to :user

  geocoded_by :address

  validates :name, 
            :presence => true
  validates :email, 
            :presence => true
  validates :phone,
            :numericality => true
  validates :description, 
            :presence => true
  validates :address, 
            :presence => true

 # try to geocode before validation to allow an indirect check against geocoder API
 before_validation :geocode
 after_validation :coord_set?

 # this method does the actual check against the object to look for changed coordinates
  def coord_set?
    if (self.address_changed?)
      if !(self.latitude_changed?)
        self.errors.add(:address, "invalid address")
        return false
        # binding.pry
      end
    end
    puts "********************* GEOCODE SUCCESS!!!**********************"
    return true
  end
  

  # contructs and sends SMS notifications upon swarm submission
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
              # sends an sms with the swarm location, and a notice to login
              :body => "A swarm has been reported at the following location: #{params.values.last} - Login to your dashboard to claim it!"
          )
    end
  end

end
