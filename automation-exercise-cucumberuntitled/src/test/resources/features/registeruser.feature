Feature: Register Feature
  User have to perform Successfully Register
  User can register with existing email
  User can Place Order: Register before Checkout

  Background:
    Given I am on Home Page.
    When I click on top menu "Signup / Login"

  Scenario: User can Register successfully.
    And Verify that "New User Signup!" visible.
    And I Enter "Prime" and email address.
    And I Click on "Signup" button.
    And Verify that "ENTER ACCOUNT INFORMATION" visible.
    And Fill Details: Title: "Mrs",Name,Email,Password: "Prime@123",Date of Birth: "15/November/2000", FirstName: "Prime", LastName: "Test",Company: "Prime",Address: "Alexendra Road",Country: "India", State: "Rajasthan", City: "Jaypur", Zipcode: "382350",Mobile Number: "9123453254"
    And Select checkbox "Sign up for our newsletter!"
    And Select checkbox "Receive special offers from our partners!"
    And I Click on "Create Account" button.
    And Verify that "ACCOUNT CREATED!" visible.
    And I Click on "Continue" button.
    And Verify that "Logged in as Prime" visible.
    And I click on top menu "Delete Account"
    Then Verify that "ACCOUNT DELETED!" is visible and click "Continue" button

  Scenario: User should register with existing email
    And Verify that "New User Signup!" visible.
    And I Enter "Prime" and email: "primeUx84@gmail.com"
    And I Click on "Signup" button.
    Then Verify that "Email Address already exist!" visible.

#  Scenario: User Should Place Order: Register before Checkout
#    Given I am on Home Page.
#    When Click 'Signup / Login' button
#    And Fill all details in Signup and create account
#    And Verify 'ACCOUNT CREATED!' and click 'Continue' button
#    And Verify ' Logged in as username' at top
#    And Add products to cart
#    And Click 'Cart' button
#    And Verify that cart page is displayed
#    And Click Proceed To Checkout
#    And Verify Address Details and Review Your Order
#    And Enter description in comment text area and click 'Place Order'
#    And Enter payment details: Name on Card, Card Number, CVC, Expiration date
#    And Click 'Pay and Confirm Order' button
#    And Verify success message 'Your order has been placed successfully!'
#    And Click 'Delete Account' button
#    Then Verify 'ACCOUNT DELETED!' and click 'Continue' button


