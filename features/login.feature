Feature: User Login

  Scenario: Successful Login with Email and Password
    Given the user launches the web app
    When the user enters their email and password
    And completes two-factor authentication
    Then the user should be redirected to the main chat room

  Scenario: Successful Login with Third-party Account
    Given the user launches the web app
    When the user selects Google/Apple for login
    And completes two-factor authentication
    Then the user should be redirected to the main chat room