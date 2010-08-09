Feature: Sign up
  In order to participate in the community
  As a user
  I want to join

Scenario: Sign up and log in
  Given I am on the signup page
  When I fill in the following:
    | Email                 | jim@jimvanfleet.com |
    | Password              | chonkyfire          |
    | Password confirmation | chonkyfire          |
  And I press "Register"
  Then I should see a form to update my profile



