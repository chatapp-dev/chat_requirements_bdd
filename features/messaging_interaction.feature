Feature: Messaging & Interaction

  Scenario: Sending Messages in Chat Room
    Given the user is in a chat room
    When the user sends a message
    Then the message should appear instantly in the chat window

  Scenario: Replying to a Specific Message
    Given the user is in a chat room
    When the user replies to a specific message
    Then the reply should be displayed as a threaded reply

    Scenario: Sending Private Messages
    Given the user is in a chat room
    And there is another user named "JohnDoe"
    When the user sends a private message "Hey, John!" to JohnDoe
    Then JohnDoe should receive the private message "Hey, John!"
    And the message should appear in the private messaging system

  Scenario: Viewing Unread Messages
    Given the user is in a chat room
    And there are messages posted while the user is not actively viewing the chat
    When the user returns to the chat
    Then the user should see the unread messages highlighted

  Scenario: Real-time Message Updates
    Given the user is in a chat room
    When another user sends a message "Welcome!"
    Then the message "Welcome!" should appear in the chat room in real-time