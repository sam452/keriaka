Feature: SMS User view most recent prices
  As a farmer, I want to see the most recent prices for maize on my cell.

  Scenario:
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

    When I send "maize" on my cell phone
    Then "+1615-495-7783" should receive a text message
    Then I should see "11" in the text message body
    And I should see "good" in the text message body
    And I should see "Joe" in the text message body
    And I should see the current date in the text message body
    And I should see "12" in the text message body
    And I should see "good" in the text message body
    And I should see "Joe" in the text message body
    And I should see the current date in the text message body
    And I should see "13" in the text message body
    And I should see "good" in the text message body
    And I should see "Joe" in the text message body
    And I should see the current date in the text message body
    And I should see "14" in the text message body
    And I should see "good" in the text message body
    And I should see "Joe" in the text message body
    And I should see the current date in the text message body
    And I should see "15" in the text message body
    And I should see "good" in the text message body
    And I should see "Joe" in the text message body
    And I should see the current date in the text message body
    And I should not see "10" in the text message body
