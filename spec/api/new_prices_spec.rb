require 'spec_helper'

describe PricesController, type: 'request' do

	it "should accept POSTS to create prices" do
		corn = Commodity.create!(name: 'corn')
		post "/api/v1/commodities/#{corn.id}/prices", {quality: 'good'}.to_json, {'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json'}
	end 
	
end
