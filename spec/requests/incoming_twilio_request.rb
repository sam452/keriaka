require 'spec_helper'

describe "responses" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  

  
  let(:sms) { get "/responses/show", {To: ENV['TWILIO_PHONE'], From: "+16154957783", Body: "corn"},
                   { 'Content-Type' => 'application/json'}}
                   
  subject { @sms }                 
  
  it "returns 200" do 
    get "/responses/show", {To: ENV['TWILIO_PHONE'], From: "+16154957783", Body: "corn"}, 
      { 'Content-Type' => 'application/json'}
    response.code.should == "200"
  end
  
  it "responds with five prices" do
    sms[:Body] == "Corn"
  end

end