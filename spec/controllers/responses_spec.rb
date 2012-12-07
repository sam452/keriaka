require 'spec_helper'

describe "ResponsesController" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  
  let(:commodity) { FactoryGirl.create(:commodity) do |commodity|
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
                       sleep 2
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
                       sleep 2
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
                       sleep 2
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
                       sleep 2
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
                       sleep 2
                       commodity.prices << FactoryGirl.create(:price, commodity: commodity)
  end }
  
  before do
    clear_messages
  end
  
  describe "GET #show" do
    
    it "parses the commodity from the Body" do
      commodity.name == "corns"
    end
    
    it "retrieves the commodity from the database" do
     
    end
    
    it "does not find the wrong commodity" do
    end
    
    it "returns the last five prices" do
    end
    
    it "renders xml with the prices" do
    end
  end
  
end