Feature: User view post list
  As a farmer, I want to see the most recent prices for maize.

  Background:
    Given the following Commodity:
      | name  | maize |
      | description | yellow |
      
      
    And that commodity has the following prices:
      | price | quality | buyer |
      | 10    | good    | Joe   |
      | 11    | good    | Joe   |
      | 12    | good    | Joe   |
      | 13    | good    | Joe   |
      | 14    | good    | Joe   |
      | 15    | good    | Joe   |

   Scenario:    
    When I go to the homepage
    And I click "Maize"
    Then I should see "11"
    And I should see "good"
    And I should see "Joe"
    And I should see the current date
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
    