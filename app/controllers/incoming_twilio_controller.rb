class IncomingTwilioController < ApplicationController

  def show
  
	my_commodity = Commodity.find_by_name(params[:Body].titlecase) 
	
	if my_commodity

	  if my_commodity.prices.most_recent.any?
	    @prices_text = my_commodity.name + ": "
	    @prices_text += my_commodity.prices.most_recent.map{|p| [p.price.to_s, p.quality, p.buyer, p.date.try(:strftime,'%m/%d')].compact.join(' - ')}.join(' | ')
	  else
	    @prices_text = "No prices found for #{my_commodity.name}"
	  end
	else
	  @prices_text = "Commodity #{params[:Body]} not found"
	end
	
	render 'show.xml.erb', :content_type => 'text/xml' 
  end

end

