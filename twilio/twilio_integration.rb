require 'twilio-ruby'

class TwilioIntegration
  def initialize
    account_sid = 'YOUR_TWILIO_ACCOUNT_SID'
    auth_token = 'YOUR_TWILIO_AUTH_TOKEN'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_sms(to, message)
    @client.messages.create(
      from: 'YOUR_TWILIO_PHONE_NUMBER',
      to: to,
      body: message
    )
  end
end
