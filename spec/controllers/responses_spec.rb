require 'spec_helper'

describe "ResponsesController" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  
  
  before do
    clear_messages
  end
  
  describe "GET #show" do
    
    it "parses the commodity from the Body" do
     # commodity.find_by_name == "corn"
    end
    
    it "retrieves the commodity from the database" do
     
    end
    
    it "does not find the wrong commodity" do
    end
    
    it "returns the last five prices" do
    end
    
  end
  
end