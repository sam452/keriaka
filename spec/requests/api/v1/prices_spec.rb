require 'spec_helper'

describe "sends a list of prices" do
	before(:each) do
		@corn = Commodity.create(name: "Corn")
		@corn.prices << Price.create(price:15)
	end

	subject { get "/api/v1/commodities/#{@corn.id}/prices"}

	it "should return 200" do
		subject
		response.code.should == "200"
	end

	
end