require 'twilio-ruby'

class ResponsesController < ApplicationController
  TWILIO_SID = ENV['TWILIO_TEST_SID']
  TWILIO_AUTH = ENV['TWILIO_AUTH_TEST_TOKEN']
  TWILIO_NUMBER = ENV['TWILIO_TEST_PHONE']
  
  def show
    
  end

end