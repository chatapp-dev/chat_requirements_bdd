Feature: User Registration

  Scenario: Manual Registration
    Given the user launches the web app
    When the user selects registration
    And enters a valid username, email, and password
    And completes two-factor authentication
    Then the user should be automatically logged in
    And redirected to the main chat page

  # Validation Rules for Email, Password, and Username fields in Registration
  Rule: Email Validation
    The username part (before "@") may include:
      - Latin letters (a-z)
      - Digits (0-9)
      - Special characters: underscores (_), periods (.), and hyphens (-)
      - A period (.) cannot appear at the beginning or end of the username
      - No consecutive periods or special symbols are allowed ("john...doe@company.com" is invalid)
      - Special symbols must be followed by one or more letters or digits
      - Maximum length 64 characters

      The domain name (after "@") must:
      - Be one or more sections separated by periods
      - Contain a second part with at least two characters (.com, .org, .cc)
      - Include only Latin letters (a-z), digits (0-9), and hyphens (-), but a hyphen cannot be at the start or end
      - Each label (the part between the dots) can contain up to 63 characters
      - The total length of the domain part should not exceed 255 characters

    Rule: Password Validation
    - Must be at least 6 characters long
    - Maximum length 128 characters
    - Should contain at least one uppercase letter, one lowercase letter
    - Cannot consist solely of letters or numbers
    - No spaces are allowed
    - Can contain special characters (!@#$%^&*)

    Rule: Username Validation
    - May contain only letters (a-z, A-Z, а-я, А-Я), digits (0-9), special characters (._-)
    - Length should be between 3 to 25 characters
    - No spaces are allowed

  Scenario: Third-party Registration
    Given the user launches the web app
    When the user selects third-party registration
    And uses Google/Apple account for sign-up
    And completes two-factor authentication
    Then the user should be automatically logged in
    And redirected to the main chat page