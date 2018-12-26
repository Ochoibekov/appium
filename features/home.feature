Feature: Login feature

  @login_1
  Scenario: As User, I should be able to login
    Given the app has launched
    Then remove ads from screen
    Then go to profile
    Then login
    Then go to food section
    And search for "Faiza"
    Then open card
    And check information