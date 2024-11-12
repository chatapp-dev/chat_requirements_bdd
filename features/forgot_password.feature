Feature: Forgot Password

  Scenario: User Requests Password Reset
    Given the user is on the login page
    When the user clicks on "Forgot Password"
    And enters their email address
    Then the user should receive a password reset email

  Scenario: User Resets Password
    Given the user has received a password reset email
    When the user clicks the reset link
    And enters a new password and confirms it
    Then the user should be redirected to the login page