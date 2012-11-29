require 'spec_helper'

describe "ResponsesController" do
  include SmsSpec::Helpers
  include SmsSpec::Matchers
  
  before do
    clear_messages
    subject { Fabricate(:commodity) }
  end
  
  describe "GET #show" do
    let(:commodity) {"corn"}
    
    it "receives a request" do
    end
    
    it "parses the commodity from the Body" do
    end
    
    it "retrieves the commodity from the database" do
     expect(subject.prices).to eq "1"
    end
    
    it "does not find the wrong commodity" do
    end
    
    it "returns the last five prices" do
    end
    
    it "renders xml with the prices" do
    end
  end
  
end