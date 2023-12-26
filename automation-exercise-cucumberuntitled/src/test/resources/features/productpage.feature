#Feature: Product page and Product Details
#  User can Search product
#  User can Verify subscription in Cart page
#  User can Added Products in Cart
#  User can Verify Product Quantity in Cart
#  User can Place Order: Register while Checkout
#  User can remove products From Cart
#  User can search products and verify cart after login
#
#
#  Scenario: User should verify Product page and Product details
#    Given I am on Home Page.
#    When Click on 'Products' button
#    And Verify user is navigated to ALL PRODUCTS page successfully
#    And The products list is visible
#    And Click on 'View Product' of first product
#    And User is landed to product detail page
#    Then Verify that detail detail is visible: product name, category, price, availability, condition brand
#
#  Scenario: User should search the product
#    Given I am on Home Page.
#    When Click on "Products" button
#    And Verify user is navigated to ALL PRODUCTS page successfully
#    And  Enter product name in search input and click search button
#    And Verify 'SEARCHED PRODUCTS' is visible
#    Then Verify all the products related to search are visible
#
#  Scenario: User should verify Subscription in cart page
#    Given I am on Home Page.
#    When Click 'Cart' button
#    And Scroll down to footer
#    And Verify text 'SUBSCRIPTION'
#    And Enter email address in input and click arrow button
#    Then Verify success message 'You have been successfully subscribed!' is visible
#
#  Scenario: User should Added Products in Cart.
#    Given I am on Home Page.
#    When Click 'Products' button
#    And Hover over first product and click 'Add to cart'
#    And Click 'Continue Shopping' button
#    And Hover over second product and click 'Add to cart'
#    And Click 'View Cart' button
#    And Verify both products are added to Cart
#    Then Verify their prices, quantity and total price
#
#  Scenario: User Should Verify Product Quantity in Cart
#    Given I am on Home Page.
#    When Click 'View Product' for any product on home page
#    And Verify product detail is opened
#    And  Increase quantity to 4
#    And Click 'Add to cart' button
#    And Click 'View Cart' button
#    Then Verify that product is displayed in cart page with exact quantity
#
#  Scenario: User should Place Order: Register while Checkout
#    Given I am on Home Page.
#    When  Add products to cart
#    And Click 'Cart' button
#    And Verify that cart page is displayed
#    And Click Proceed To Checkout
#    And Click 'Register / Login' button
#    And Fill all details in Signup and create account
#    And Verify 'ACCOUNT CREATED!' and click 'Continue' button
#    And Verify ' Logged in as username' at top
#    And Click 'Cart' button
#    And Click 'Proceed To Checkout' button
#    And Verify Address Details and Review Your Order
#    And Enter description in comment text area and click 'Place Order'
#    And Enter payment details: Name on Card, Card Number, CVC, Expiration date
#    And Click 'Pay and Confirm Order' button
#    And Verify success message 'Your order has been placed successfully!'
#    And Click 'Delete Account' button
#    Then Verify 'ACCOUNT DELETED!' and click 'Continue' button
#
#  Scenario: User should remove products From Cart
#    Given I am on Home Page.
#    When Add products to cart
#    And Click 'Cart' button
#    And  Verify that cart page is displayed
#    And Click 'X' button corresponding to particular product
#    Then Verify that product is removed from the cart
#
#  Scenario: User should view category products
#    Given I am on Home Page.
#    When Verify that categories are visible on left side bar
#    And Click on 'Women' category
#    And Click on any category link under 'Women' category, for example: Dress
#    And Verify that category page is displayed and confirm text 'WOMEN - TOPS PRODUCTS'
#    And On left side bar, click on any sub-category link of 'Men' category
#    Then Verify that user is navigated to that category page
#
#  Scenario: User should search products and verify cart after login
#    Given I am on Home Page.
#    When User click on 'Products' button
#    And Verify user is navigated to ALL PRODUCTS page successfully
#    And Enter product name in search input and click search button
#    And Verify 'SEARCHED PRODUCTS' is visible
#    And Verify all the products related to search are visible
#    And Add those products to cart
#    And Click 'Cart' button and verify that products are visible in cart
#    And Click 'Signup / Login' button and submit login details
#    And Again, go to Cart page
#    Then Verify that those products are visible in cart after login as well
#
#Scenario: User should review on product
#  Given I am on Home Page.
#  When Click on 'Products' button
#  And Verify user is navigated to ALL PRODUCTS page successfully
#  And Click on 'View Product' button
#  And Verify 'Write Your Review' is visible
#  And Enter name, email and review
#  And Click 'Submit' button
#  Then Verify success message 'Thank you for your review.'
#
#  Scenario: User should download Invoice after purchase order.
#    Given I am on Home Page.
#    When Add products to cart
#    And Click 'Cart' button
#    And Verify that cart page is displayed
#    And Click Proceed To Checkout
#    And Click 'Register / Login' button
#    And Fill all details in Signup and create account
#    And Verify 'ACCOUNT CREATED!' and click 'Continue' button
#    And Verify ' Logged in as username' at top
#    And Click 'Cart' button
#    And Click 'Proceed To Checkout' button
#    And Verify Address Details and Review Your Order
#    And Enter description in comment text area and click 'Place Order'
#    And Enter payment details: Name on Card, Card Number, CVC, Expiration date
#    And Click 'Pay and Confirm Order' button
#    And Verify success message 'Your order has been placed successfully!'
#    And Click 'Download Invoice' button and verify invoice is downloaded successfully
#    And Click 'Continue' button
#    And  Click 'Delete Account' button
#    Then Verify 'ACCOUNT DELETED!' and click 'Continue' button
#
