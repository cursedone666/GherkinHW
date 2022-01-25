@smoke @notAuthorized
Feature: Catalog of goods
	I as a user
	want to have ability to see categories of products
	in order to speed products search

	I as a user
	want to choose category
	in order to see what sub-categories are there 

	I as a user
	want to sort product by popularity
	in order to choose the most popular product

Background: 
	Given user is in the homepage
	When user click on Catalog

@smoke 
Scenario: List of product categories
	And user see different categories of products
	When user click on 'drinks' category
	Then user appears on 'drinks' page

@smoke 
Scenario: Sub-categories list
	And user hovers on 'Fresh meat' category
	And user click on 'Rabbit' sub-category
	Then user appears on 'Rabbit' page

@smoke
Scenario: Sort product
	And user hovers on Grocery
	And user hovers on 'Специи и уксус'
	And user click on 'Уксус'
	Then user appears on 'Уксус' page
	When user is on 'Уксус' page
	And user click on 'Сортировать' burger menu
	And user click on 'По популярности' category
	Then user sees sorted page of 'Уксус'
	
	
