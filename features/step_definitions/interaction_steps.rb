Given /^I (?:click|press) "(.*?)"$/ do |link_text|
  click_link_or_button link_text
end

Then /^I should see "(.*?)"$/ do |expected_text|
  page.should have_content(expected_text)
end

Then /^I should not see "(.*?)"$/ do |expected_text|
  page.should_not have_content(expected_text)
end

Then /^I should see the title "(.*?)"$/ do |title_text|
  page.should have_css("h1, h2", text: title_text)
end

When /^I fill in "(.*?)" for "(.*?)"$/ do |text, field_label|
  page.fill_in field_label, with: text
end

Then /^the "(.*?)" field should contain "(.*?)"$/ do |field_name, text|
  step %{I should see "#{text}" in the "#{field_name}" field}
end

Then /^I should see "(.*?)" in the "(.*?)" field$/ do |text, field_name|
  field = find_field(field_name)
  field_value = (field.tag_name == 'textarea') ? field.text : field.value
  field_value.should == text
end

Then /^I should see the current date$/ do
  page.should have_content(Time.now.try(:strftime,'%m/%d/%Y'))
end

