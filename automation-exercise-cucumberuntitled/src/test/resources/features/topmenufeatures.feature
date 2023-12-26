@testings
Feature: In order to explore and interact with the features on the Home Page,
  As a user, I want to perform various actions (verify Test case page, subscription,  and verify corresponding outcomes.
  User can verify Test case page
  User can Verify subscription
  User can view category products
  User can add product in cart
  User can verify address details in checkout page
  User can verify scroll Up using 'Arrow' button and Scroll Down functionality

  Background:
    Given I am on Home Page.

  Scenario: User can Fill Contact US Form
    When I click on top menu "Contact us"
    And Verify text "Get In Touch" is visible
    And Enter Name: "Prime", Email: "prime+1@gmail.com", Subject: "cloths" and Message: "I want to buy cloths for women"
    And Upload file
    And I Click "Submit" button
    And I Click "OK" button
    And Verify text "Success! Your details have been submitted successfully." is visible
    Then I Click "Home" button
    And verify that landed to home page successfully.

  Scenario: User should verify Test cases Page
    When I click on top menu "Test Cases"
    Then Verify text "Test Cases" is visible

#  Scenario: User should verify Subscription in on Home page
#    When User scroll down to footer
#    And Verify text "SUBSCRIPTION"
#    And  Enter email address in input and click arrow button
#    Then  Verify success message 'You have been successfully subscribed!' is visible
#
#  Scenario: User should verify view and cart brand products
#    When Click on 'Products' button
#    And Verify that Brands are visible on left side bar
#    And Click on any brand name
#    And Verify that user is navigated to brand page and brand products are displayed
#    And On left side bar, click on any other brand link
#    Then Verify that user is navigated to that brand page and can see products
#
#  Scenario:  User should added product in cart
#    Given I am on Home Page.
#    When Scroll to bottom of page
#    And Verify 'RECOMMENDED ITEMS' are visible
#    And Click on 'Add To Cart' on Recommended product
#    And Click on 'View Cart' button
#    Then  Verify that product is displayed in cart page
#
#Scenario: User should verify address details in checkout page
#  Given I am on Home Page.
#  When User should click on 'Signup / Login' button
#  And Fill all details in Signup and create account
#  And Verify 'ACCOUNT CREATED!' and click 'Continue' button
#  And Verify ' Logged in as username' at top
#  And Add products to cart
#  And Click 'Cart' button
#  And Verify that cart page is displayed
#  And Click Proceed To Checkout
#  And Verify that the delivery address is same address filled at the time registration of account
#  And Verify that the billing address is same address filled at the time registration of account
#  And Click 'Delete Account' button
#  Then Verify 'ACCOUNT DELETED!' and click 'Continue' button
#
#Scenario: User should verify scroll Up using 'Arrow' button and Scroll Down functionality.
#  Given I am on Home Page.
#  When Scroll down page to bottom
#  And Verify 'SUBSCRIPTION' is visible
#  And Click on arrow at bottom right side to move upward
#  And Verify that page is scrolled up and 'Full-Fledged practice website for Automation Engineers' text is visible on screen
#
#  Scenario: User should verify Scroll Up without 'Arrow' button and Scroll Down functionality
#  Given I am on Home Page.
#    When Scroll down page to bottom
#    And Verify 'SUBSCRIPTION' is visible
#    And Scroll up page to top
#    Then Verify that page is scrolled up and 'Full-Fledged practice website for Automation Engineers' text is visible on screen
