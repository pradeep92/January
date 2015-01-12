Feature: C14058-Navigating Pages on Advanced Searches

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage

Scenario: To check Navigating pages on Requests
	
	Given I am on the coupa home page
	And I navigate to Requests
	And I click search 
	When I click 2 button to view next page
	When I click 3 button to view next page
	Then I should be in next page

Scenario: To check Navigating pages on Orders
	
	Given I am on the coupa home page
	And I navigate to Orders
	And I click search 
	When I click 2 button to view next page
	When I click 3 button to view next page
	Then I should be in next page

Scenario: To check Navigating pages on Invoices
	
	Given I am on the coupa home page
	And I navigate to Invoices
	And I click search 
	When I click 2 button to view next page
	When I click 3 button to view next page
	Then I should be in next page

Scenario: To check Navigating pages on Expenses
	
	Given I am on the coupa home page
	And I navigate to Expenses
	And I click search 
	When I click 2 button to view next page
	When I click 3 button to view next page
	Then I should be in next page






 	