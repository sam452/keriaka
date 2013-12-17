require 'spec_helper'

feature "commodity management" do

	context "user not logged in" do

	  visit "commodities/new" do

      expect(page).to have_text("you are not authorized.")

	  end

	end

	context "user logged in" do

    before (:each) do
    @user = Fabricate(:user)
    sign_in @user
  end

  it "creates a commodity"

	end

end