Feature: Creating a New Chat Room

  Scenario: User Creates a New Chat Room
    Given the user is logged in
    When the user selects the option to create a new chat room
    And enters a title and selects a topic
    Then the new chat room should be added to the sidebar