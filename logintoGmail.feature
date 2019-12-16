Feature: login Gmail
Scenario: Login Gmail with valid credentials
Given I am on the Gmail homepage
And I enter username
And I click on  Next
And I enter password
When I click on Next button 
Then I should navigate to Inbox page

Scenario: Logout gmail
When click on Google account button
And I click on signout button
    
