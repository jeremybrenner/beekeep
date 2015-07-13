class Swarm < ActiveRecord::Base

  belongs_to :user

    def self.send_swarm_notice(params)

    number_to_send_to = ENV["number_to_send_to"]

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
