Feature: Main Chat Room

  Scenario: View Messages in Main Chat Room
    Given the user is logged in
    When the user accesses the main chat room
    Then the user should see messages related to motivational topics
    And the chat screen should scroll to the latest message