@MediumPriority
Feature: Blog
	I as a user
	want to read more about company
	in order to understand become their customer or not

	I as a user
	want to read new receipts
	in order to cook tastier

	I as a user 
	want to have ability to get new information
	in order to broaden my worldview
	
Background: 
	Given user is on the homepage
	When user click on 'Блог' button in header
	Then user appears on 'Блог' page

Scenario: Read about company
	When user click on 'О нас' page button in blog
	Then user sees 'Мы открылись' article
	When user click on 'Мы открылись' article
	Then user appears on 'Мы открылись' article
	And user sees article

Scenario: Read about receipts
	When user click on 'Рецепты' page button in blog
	Then user appears on articles with receipts
	When user click on first article on page
	Then user appears on article page
	And user sees receipt of dish

Scenario: Get new information
	When user click on 'Все статьи' page button in blog
	Then user appears on page with articles
	When user click on first article 
	Then user appears on articles page
	And user sees an article

	
