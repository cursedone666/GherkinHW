Feature: Order product
	I as a user 
	want confrim payment information 
	in order to buy table 

@mytag 
Scenario: Order table
	Given user is on the homepage
	When user click on Search field
	And user types 'Table' in seacrh field
	#Then user should see 'Table'
	And user adds first 'Table' in the list to basket
	And user click on shopping basket in header
	Then user should appear on basket page
	Then choosen table is in the basket in amount of 1
	When user click on Order product button
	And user confirms payment information
	#And user click on Order button
	Then user see 'Thank you for ordering'