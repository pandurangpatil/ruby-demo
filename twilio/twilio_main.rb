require_relative 'lib/twilio_integration'

twilio = TwilioIntegration.new

to = '+1234567890' 
message = 'Hello from Twilio!' 

twilio.send_sms(to, message)
