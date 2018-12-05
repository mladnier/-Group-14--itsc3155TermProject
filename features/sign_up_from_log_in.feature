Feature: Sign Up From Log In Page
  As a user
  So that if i accidentally click log in instead of sign up
  I can click sign up now on the log in page and be redirected

Scenario: As a user I want to be able to navigate from the homepage to the log in form
  Given I am on the "Log in" page
  When I click on the "Sign up now!" link
  Then I should be on the "Sign Up, Pup!" page
  And I should see the "Email" field
  And I should see the "Password" field