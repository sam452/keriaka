require 'spec_helper'

describe PricesController do 
	context "database with records" do
		
		context "authorized user" do
			@user = FactoryGirl.create(:user)
			#sign_in @user
			
			it "returns a record" do

				corn = Commodity.find_or_create_by_name(name: "Corn")
	  		@this_time = Time.now
	  		corn.prices << Price.create(price: 15, date: @this_time, quality: "good")
	  		
				@expected = [{
									price: 15,
									quality: "good",
									date: @this_time
								}].to_json

				get "api/commodities/#{corn.id}/prices/"
				response.body.should == @expected
			end

			it "POST price" do
			end
		end

	end
	
end
