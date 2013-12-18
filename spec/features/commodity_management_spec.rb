require 'spec_helper'

feature "commodity management" do

	    background do
		    visit root_path
		    expect{
		    	click_link 'Sign Up'
		    	fill_in 'Email', with: 'newuser@example.com'
		    	fill_in "Password", with: 'secret123'
		    	fill_in 'Password confirmation', with: 'secret123'
		    	click_button 'Sign up'
		    	}.to change(User, :count).by(1)
		  end

		scenario "user not logged in" do
			click_link 'Sign Out'
			visit "commodities/new"
			  
			expect(page).to have_content 'You need to sign in or sign up before continuing.'

	  end
 



		scenario "logged-in user creates a commodity" do
			
		end

end