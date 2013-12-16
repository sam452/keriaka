require 'spec_helper'

describe "incoming_twilio" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  
  subject { get "/incoming_twilio", {To: ENV['TWILIO_PHONE'], From: "+16154957783", Body: "corn"}, { 'Content-Type' => 'application/json'} }
  
#   it "returns 200" do 
#      get "/responses/show", {To: ENV['TWILIO_PHONE'], From: "+16154957783", Body: "corn"}, 
#        { 'Content-Type' => 'application/json'}
#      response.code.should == "200"
#    end
  
  it "should return 200 to Twilio" do
  	subject
	response.code.should == "200"
  end
    
  context "corn commidity exists" do
  
  	before(:each) do
       Commodity.create(name: "Corn")
  	end
	
	it "should reply with twilio sms syntax including corn" do
	  subject
		
	  response.body.should =~ /<Response>/
	  response.body.should =~ /<\/Response>/
	  response.body.should =~ /Corn/
	end	
	
	context "no prices available" do
	  it "should reply that no prices are available", :focus => true do
        subject
	    response.body.should =~ /No prices found/
	  end
	  
    end
    
    context "prices found" do
    
      before(:each) do
        corn = Commodity.find_by_name("Corn")
	    corn.prices << Price.create(price: 15)	
	  end
	  
  	  it "should reply with corn prices" do
	    subject
	    response.body.should =~ /15/
	  end
	  
    end
	
  end
  
  context "no corn commodity" do
  
  	it "should reply with twilio sms syntax that no commidity found" do
  	  subject
  	
	  response.body.should =~ /<Response>/
	  response.body.should =~ /<\/Response>/
	  response.body.should =~ /Commodity corn not found/
  	end
  
  end

end