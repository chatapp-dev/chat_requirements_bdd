Feature: Landing Page for ChatMate

  Scenario: Navigation Bar Functionalities
    Given the user is on the ChatMate landing page
    When the user clicks on "How to enter the chat?" in the navigation bar
    Then the page should scroll smoothly to the "Get Started in 3 Steps" section
    When the user clicks on "About Us"
    Then the page should scroll to the "About" section
    When the user clicks on "Contacts"
    Then the page should scroll to the "Contact Us" section

  Scenario: Button Redirection to Chat Application
    Given the user is on the ChatMate landing page
    When the user clicks on the "Explore the Chat" or "Go to the Chat" button
    Then the user should be redirected to the login chat page

  Scenario: Mobile and Tablet Responsiveness
    Given the user views the ChatMate landing page on a mobile or a tablet device
    When the page loads
    Then the layout should adapt correctly without content overlapping or being cut off
    And the navigation menu should transform into a mobile-friendly version

  Scenario: Clicking on Email Link Redirects to Mail Client
    Given the user is on the "Contact Us" section of the ChatMate landing page
    When the user clicks on the email link "team.challenge52286@gmail.com"
    Then the user should be redirected to their default mail client
    And a new email draft should open with "team.challenge52286@gmail.com" as the recipient (mailto)

  Scenario: Smooth Visual Transitions
    Given the user is on the ChatMate landing page
    When the page elements load and interact
    Then all hover effects should display smoothly