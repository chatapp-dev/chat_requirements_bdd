Feature: User Logout

  Scenario: Successful Logout
    Given the user is logged in
    When the user selects the logout option
    Then the user should be redirected to the login/registration page