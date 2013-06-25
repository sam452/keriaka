Feature: Marketer can create a commodity
  As a marketer
  In order to empower the indigent farmers of Tanzania
  I want to create commodities that they can sell today 

  Acceptance Criteria:
  * Commodity must have a name and description
  * Commodity name must start with capital letter and lower case
  
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

  Scenario: Names for commodity is capitalized
    Given I am on the homepage
    And I click "New Commodity"
    Then I should see "Enter the commodity that can be sold"
    When I fill in "tobacco" for "Name"
    And I fill in "Smokey" for "Description"
    And I press "Create Commodity"
    Then I should see "Your report has been accepted"
    And I should see "Tobacco"
    
  Scenario: Name for commodity cannot be blank
    Given I am on the homepage
    And I click "New Commodity"
    Then I should see "Enter the commodity that can be sold"
    When I fill in "  " for "Name"
    And I fill in "Smokey" for "Description"
    And I press "Create Commodity"
    Then I should see "Your report couldn't be posted"
    And I should see "Name can't be blank"
    And I should see "Enter the commodity that can be sold"

  Scenario: Name for commodity cannot be more than one word
    Given I am on the homepage
    And I click "New Commodity"
    Then I should see "Enter the commodity that can be sold"
    When I fill in "my commodity" for "Name"
    And I fill in "Smokey" for "Description"
    And I press "Create Commodity"
    Then I should see "Your report couldn't be posted"
    And I should see "Name must be a single word"
    And I should see "Enter the commodity that can be sold"

  Background:
    I am not signed in

  Scenario: Unauthorized user cannot create commodity
    Given I do not exist as a user    
        