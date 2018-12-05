Feature: Log In
  As a user
  So that I can easily log in
  I want to be able to log in to my account

Scenario: As a user I want to be able to navigate from the homepage to the log in form
  Given I am on the home page
  When I click on the "Log In" link
  Then I should be on the "Log in" page
  And I should see the "Email" field
  And I should see the "Password" field
