Feature: C14049-Requisition Lines Custom Views

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
   And I am in homepage

Scenario:To check Requisition Lines Custom Views

   Given I am on the coupa home page
   And I navigate to Requests
   And I click on create view in requisition lines
   And I enter name in create new table view as "Kumar18"

   And I add every Available Column to the Selected Column
   And I Click on save button
   Then I should get popup that view Created
   When I Click on export button
   Then I should verify report recieve via mail