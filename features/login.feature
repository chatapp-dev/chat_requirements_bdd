Feature: User Login

  Scenario: Successful Login with Email and Password
    Given the user launches the web app
    When the user enters their email and password
    And clicks the "Log In and Stay Motivated" button
    And completes two-factor authentication
    Then the user should be redirected to the main chat room

  Scenario: Invalid Login with Incorrect Email or Password
    Given the user launches the web app
    When the user enters an incorrect email or password
    And clicks the "Log In and Stay Motivated" button
    Then an error message should appear, stating "Invalid email or password. Please try again."

  Scenario: Password Recovery
    Given the user is on the login page
    When the user clicks on the "Forgot your password?" link
    Then the user should be redirected to a password recovery page
    And instructions for resetting the password should be provided

  Scenario: Successful Login with Google/Apple Account
    Given the user launches the web app
    When the user selects Google or Apple for login
    And completes the third-party authentication process
    Then the user should be redirected to the main chat room

  Scenario: Invalid Login with Google/Apple Account
    Given the user launches the web app
    When the user selects Google or Apple for login
    And the third-party authentication fails due to invalid credentials or a user-denied permission request
    Then the user should see an error message explaining the issue (e.g., "Google login failed. Please try again or use a different account.")
    And the user should be redirected back to the login page

  Scenario: Become a Member
    Given the user is on the login page
    When the user clicks on the "Become a member" link
    Then the user should be redirected to a registration page