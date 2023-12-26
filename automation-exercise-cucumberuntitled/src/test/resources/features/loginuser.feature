Feature: Login Feature
  User have to perform Successfully Login
  User can Login with incorrect email and password
  User can  Place Order: Login before Checkout

  Background:
    Given I am on Home Page.
    When I click on top menu "Signup / Login"
    And Verify "Login to your account" is visible

  Scenario: User should Login Successfully
    And I enter email: "primeIRir@gmail.com" and password: "Prime@123"
    And I click "login" button
    And Verify that "Logged in as Prime" visible.
    And I click on top menu "Delete Account"
    Then Verify that "ACCOUNT DELETED!" is visible and click "Continue" button

  Scenario: User should Login with incorrect email and password
    And I enter email: "primeUx842@gmail.com" and password: "Prime@123"
    And I click "login" button
    Then Verify that "Your email or password is incorrect!" visible.

  Scenario: User should Logout Successfully
    And I enter email: "primeUx84@gmail.com" and password: "Prime@123"
    And I click "login" button
    And Verify that "Logged in as Prime" visible.
    And I click on top menu "Logout"
    Then Verify "Login to your account" is visible

#  Scenario: User should  Place Order: Login before Checkout
#    Given I am on Home Page.
#    When Click 'Signup / Login' button
#    And Fill email, password and click 'Login' button
#    And Verify 'Logged in as username' at top
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
