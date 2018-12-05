Feature: Get started now
  As a user
  So that I can get started now
  I want to be able to create a new account
  
Scenario: As a user I want to be able to navigate from the homepage to the new user form
  Given I am on the home page
  When I click on the "Get Started Now!!" link
  Then I should be on the "Sign Up, Pup!" page
  And I should see the "Email" field
  And I should see the "Password" field
  And I should see the "Name" field
  And I should see the "Age" field


