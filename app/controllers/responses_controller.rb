require 'twilio-ruby'

class ResponsesController < ApplicationController
  
  
  
  def show
    my_commodity = "corn" #params[:Body] #  #
   # commodity = Commodity.find_by_name(my_commodity)
    @commodity = Commodity.find_by_name(my_commodity)
    @prices = @commodity.prices.most_recent
    
    if @prices
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
    end
    render 'process_sms.xml.erb', :content_type => 'text/xml'
    
  end

end