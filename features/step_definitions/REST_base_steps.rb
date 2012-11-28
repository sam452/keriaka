When /^I send a GET request for "([^\"]*)"$/ do |path|
  get path
end

When /^I send a POST request to "([^\"]*)" with the following:$/ do |path, body|
  post path, body
end

When /^I send a PUT request to "([^\"]*)" with the following:$/ do |path, body|
  put path, body
end

When /^I send a DELETE request to "([^\"]*)"$/ do |path|
  delete path
end

Then /^the response should be "([^\"]*)"$/ do |status|
  last_response.status.should == status.to_i
end

Then /^the response JSON should be:$/ do |body|
  JSON.parse(last_response.body).should == JSON.parse(body)
end