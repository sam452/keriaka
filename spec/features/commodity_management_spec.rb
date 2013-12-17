require 'spec_helper'

feature "commodity management" do

	context "user not logged in" do

	  it "will not see commodities/new" do
	    visit "commodities/new" do
			  save_and_open_page
			  expect(page).to have_text("you are not authorized.")
      end
	  end

	end

	context "user logged in" do

	    before (:each) do
		    @user = Fabricate(:user)
		    sign_in @user

		    it "creates a commodity" do
		    	
		    end
			end
	end

end