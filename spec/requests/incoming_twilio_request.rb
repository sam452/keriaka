require 'spec_helper'

describe "responses" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  
  it "returns 200" do 
    get "/responses/show", {To: ENV['TWILIO_PHONE'], From: "+16154957783", Body: "corn"}, { 'Content-Type' => 'application/json'}
    response.code.should == "200"
  end

end