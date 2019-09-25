Feature: List mail on inbox page
    As a user
    In order to read mail
    I expect to view a list of mail assorted by date

    Background user exists and login

    @javascript
  Scenario: Viewing list of mail on the application's inbox page
    When I am on the inbox page
    And I am on the "inbox page"
    Then I should see a list of mail
    And I should see them assorted by date

