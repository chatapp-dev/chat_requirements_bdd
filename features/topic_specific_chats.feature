Feature: Navigating to Topic-specific Chats

  Scenario: Accessing Topic-specific Chats
    Given the user is in the main chat room
    When the user selects "Learning Together" from the sidebar
    Then the user should enter the "Learning Together" chat room
    And should see discussions

  Scenario: Accessing "Finding a New Job" Chat
    Given the user is in the main chat room
    When the user selects "Finding a New Job" from the sidebar
    Then the user should enter the "Finding a New Job" chat room
    And should see discussions about interviews and job search tips

  Scenario: Accessing "Weight Loss" Chat
    Given the user is in the main chat room
    When the user selects "Weight Loss" from the sidebar
    Then the user should enter the "Weight Loss" chat room
    And should see messages focused on motivation and weight loss support

  Scenario: Accessing "Plans" Chat
    Given the user is in the main chat room
    When the user selects "Plans" from the sidebar
    Then the user should enter the "Plans" chat room
    And should see users discussing their goals and daily schedules

  Scenario: Accessing "Travel" Chat
    Given the user is in the main chat room
    When the user selects "Travel" from the sidebar
    Then the user should enter the "Travel" chat room
    And should see discussions about travel destinations and experiences

  Scenario: Joining Other Chat Rooms
    Given the user is in the main chat room
    When the user browses the list of available chat rooms
    And selects a chat room titled "Fitness Motivation"
    Then the user should enter the "Fitness Motivation" chat room