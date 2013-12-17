require 'spec_helper'

describe PricesController, type: 'request' do
  
  before(:each) do
  	@corn = Commodity.create!(name: 'corn')
  end

	it "should accept POSTS to create prices" do
		
		post "/api/v1/commodities/#{@corn.id}/prices", {quality: 'good', price: 15}.to_json, {'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json'}
		response.code.should == "200"
	end 
	
end
