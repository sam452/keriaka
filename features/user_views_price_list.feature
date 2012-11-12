Feature: User view post list
  As a farmer, I want to see the most recent prices for maize.

  Scenario:
    Given that price has 6 prices    
    When I go to the homepage
    Then I should see "12"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see the price "13"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see the price "14"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see the price "15"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should see the price "16"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
    And I should not see "11"
