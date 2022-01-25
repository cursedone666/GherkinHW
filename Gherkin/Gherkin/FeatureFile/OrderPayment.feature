@regression
Feature: Order payment
	I as a user
	want to transfer my money
	so that I can pay for my order

	I as a user
	want to pay for products on site by card
	In order not to pay cash to courier

	I as a user
	want to have ability to pay for order by IBAN number
	in order to print check

Background: 
	Given user is on the homepage
	
Scenario: Pay for order through Money Transfer
	When user click on 'Денежный перевод' button in the header
	Then user appears on 'Денежный перевод' page
	And user enters his data in 'ФИО' field
	And user enters his phone number in 'Номер телефона' field
	And user enters order number in 'Номер заказа' field 
	And user enters payment amount in 'Сумма заказа' field
	When user click on 'Оплатить' button
	Then user appears on payment confirmation page
	And user confirms payment
	Then user sees 'Оплата прошла успешно' message
	
Scenario: Pay for order by card
	When user click on Search field
	And user enters 'Шоколад'
	And user press 'Enter' button
	Then user appears on sorted with 'Шоколад' page
	And user presses 'Купить' on first product
	Then user sees pop-up 'Моя корзина'
	When user enter his phone number for no-registration order in 'Номер телефона' field
	And user click on 'Оформить' заказ button
	Then user sees 'Наш менеджер скоро с вами свяжется' message

Scenario: Pay for order by IBAN
	When user click on Search field
	And user enters 'Чай'
	And user press 'Enter' button
	Then user appears on sorted with 'Чай' page
	And user click on first product position on page
	Then user appears on description product page
	When user click on 'Добавить в корзину' button
	Then user sees pop-up 'Моя корзина'
	And user click on 'Оформить заказ' button
	Then user appears on ordering page
	And user fills required fields
	And user click on 'Оформить заказ' button
	Then user appears on confirmation order page
	And user sees 'Спасибо ваш заказ оформлен' message


