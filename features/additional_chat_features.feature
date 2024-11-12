Feature: Additional Chat Features

  Scenario: Typing Indicators
    Given the user is in a chat room
    When another user starts typing
    Then the user should see a typing indicator for that user

  Scenario: Auto-scrolling to Latest Message
    Given the user is in a chat room
    And new messages are being posted
    When a new message appears in the chat
    Then the chat window should automatically scroll to the latest message

  Scenario: Notifications for Unread Messages
    Given the user is in a chat room
    And new messages are posted while the chat is out of view
    When the user checks the chat
    Then the user should see a notification for unread messages

  Scenario: Private Message Notifications
    Given the user is logged in
    When the user receives a private message
    Then the user should see a notification for the unread private message

  Scenario: Multi-tab Real-time Message Synchronization
    Given the user has the chat open in multiple tabs
    When the user sends a message in one tab
    Then the message should appear in real-time across all open tabs