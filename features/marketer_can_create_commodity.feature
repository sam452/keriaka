Feature: Marketer can create a commodity
  As a marketer
  In order to empower the indigent farmers of Tanzania
  I want to create commodities that they can sell today 

  Acceptance Criteria:
  * Commodity must have a name and description
  
  Background:
    Given I am signed in
  
  Scenario: Happy Path for commodity
    Given I am on the homepage
    And I click "New Commodity"
    Then I should see "Enter the commodity that can be sold"
    When I fill in "Tobacco" for "Name"
    And I fill in "Smokey" for "Description"
    And I press "Create Commodity"
    Then I should see "Your report has been accepted."
    And I should see "Tobacco"
    And I should see "Smokey"
    And I should see "New Price Report"
