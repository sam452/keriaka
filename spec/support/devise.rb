RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :api
  config.include Devise::TestHelpers, :type => :controller
end

module ControllerMacros
	def login_user
		@request.env["devise.mapping"] = Devise.mappings[:user]
		user = FactoryGirl.create(:user)
		sign_in user
	end
end

