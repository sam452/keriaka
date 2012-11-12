Feature: User view post list
  As a farmer, I want to see the most recent prices for maize.

  Scenario:
    Given 6 prices    
    When I go to the homepage
    Then I should see "11"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And show me the page
    And I should see "12"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see "13"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see "14"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see "15"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should not see "10"
