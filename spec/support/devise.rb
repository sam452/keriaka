RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :api
  config.include Devise::TestHelpers, :type => :controller
end
