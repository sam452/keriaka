require 'spec_helper'

describe PricesController, type: 'request' do

	it "should accept POSTS to create prices" do
		Commodity.create!(name: 'corn')
		post '/api/commodities/1/prices', {quality: 'good'}.to_json, {'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json'}
	end 
	
end
