Feature: Test search with google

  Background: Internet connection is working

  Scenario: Test google
    Given I access "https://www.google.com" url
    Then I verify the title matches "Google"
    And I verify the response code is "200"

