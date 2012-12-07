Feature: Marketer can post price on different commodities
  As a marketer
  In order to empower the indigent farmers of Tanzania
  I want to post prices for tobacco found today 

  Acceptance Criteria:
  * Report must have price and quality
  * Report must have date and time recorded
  * Report must have buyer recorded
  Background:
    Given the following Commodities:
      | name    | description |
      | Tobacco | smokey      |
      | maize   | yellow      |
    And I am signed in

  Scenario: Happy Path
    Given I am on the homepage
    And I click "Tobacco"
    Then I should see "Latest prices for Tobacco"
    And I click "New Price Report"
    Then I should see "Enter the price and quality for Tobacco in today's market"
    And I fill in "10" for "Price"
    And I fill in "Good" for "Quality"
    And I fill in "Joe" for "Buyer"
    And I press "Create Price"
    Then I should see "Your report has been accepted."
    And I should see "Tobacco"
    And I should see "10"
    And I should see "Good"
    And I should see "Joe"
    And I should see the current date

  Scenario: User cannot leave price blank
    Given I am on the homepage
    And I click "Tobacco"
    Then I should see "Latest prices for Tobacco"
    And I click "New Price Report"
    Then I should see "Enter the price and quality for Tobacco in today's market"
    And I fill in "" for "Price"
    And I fill in "Good" for "Quality"
    And I fill in "Joe" for "Buyer"
    And I press "Create Price"
    Then I should see "Your report couldn't be posted. Price can't be blank"
    Then I should see "Enter the price and quality for Tobacco in today's market"
