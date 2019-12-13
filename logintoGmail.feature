Feature: login Gmail
Scenario: Login Gmail with valid credentials
Given I am on the Gmail homepage
And I enter username
And I click on  Next
And I enter password
When I click on Next button 
Then I should navigate to Inbox page


Scenario: Sending mail
Given I am on the compose page
And I enter emailid
And I enter subject
When I click on send button
    
