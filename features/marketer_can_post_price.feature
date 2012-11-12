Feature: Marketer can post price
  As a marketer
  In order to empower the indigent farmers of Tanzania
  I want to post prices for maize found today 

  Acceptance Criteria:
  * Report must have price and quality
  * Report must have date and time recorded
  * Report must have buyer recorded
  
  Background:
    Given I am signed in
  
  Scenario: Happy Path
    Given I am on the homepage
    And I click "New Report"
    Then I should see "Enter the price and quality for today's market"
    When I fill in "10" for "Price"
    And I fill in "Good" for "Quality"
    And I fill in "Joe" for "Buyer"
    And I press "Create Price"
    Then I should see "Your report has been accepted."
    And I should see "10"
    And I should see "Good"
    And I should see "Joe"
    And I should see the current date
