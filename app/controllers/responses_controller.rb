require 'twilio-ruby'

class ResponsesController < ApplicationController
  TWILIO_SID = ENV['TWILIO_TEST_SID']
  TWILIO_AUTH = ENV['TWILIO_AUTH_TEST_TOKEN']
  TWILIO_NUMBER = ENV['TWILIO_TEST_PHONE']
  
  def show
    my_commodity = params[:Body] # "corn" #
   # commodity = Commodity.find_by_name(my_commodity)
    if Commodity.find_by_name(my_commodity)
      @commodity = Commodity.find_by_name(my_commodity)
      @prices = @commodity.prices.most_recent
      @prices_text =  "Price|Quality|Buyer|Date|"
      @prices.each do |p|
        @prices_text << p.price.to_s
        @prices_text << ', '
        @prices_text << p.quality
        @prices_text << ', '
        @prices_text << p.buyer
        @prices_text << ', '
        @prices_text << p.date.try(:strftime,'%m/%d')
        @prices_text << '| '
      end
      else
        @prices_text = "No prices found for #{my_commodity}"
    end 
    
    render 'process_sms.xml.erb', :content_type => 'text/xml'
    
  end

end