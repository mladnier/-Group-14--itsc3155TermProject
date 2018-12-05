Feature: Sign Up
  As a user
  So that I can easily sign up
  I want to be able to create a new account
  
Scenario: As a user I want to be able to navigate from the homepage to the new user form
  Given I am on the home page
  When I click on the "Sign Up" link
  Then I should be on the "Sign Up, Pup!" page
  And I should see the "Email" field
  And I should see the "Password" field