Feature:
    In order to buy a product
    As a customer I need to register on the website

Background: I open the url
    Given I open the url "http://automationpractice.com/index.php"
    When I click on the link "Sign in"
    Then I expect that the title is "Login - My Store"

Scenario: Register on the website
    Then I expect that element "#email_create" becomes displayed
    When I set email "testq@gmail.com" to the inputfield "#email_create"
    When I click on the button "#SubmitCreate"
    Then I expect that element "#customer_firstname" becomes displayed
    When I set "A" to the inputfield "#customer_firstname"
    When I set "B" to the inputfield "#customer_lastname"
    When I set "123456" to the inputfield "#passwd"
    When I set "A" to the inputfield "#firstname"
    When I set "B" to the inputfield "#lastname"
    When I set "India" to the inputfield "#address1"
    When I set "Bangalore" to the inputfield "#city"
    When I select the 2nd option for element "#uniform-id_state"
    When I set "93829" to the inputfield "#postcode"
    When I set "9382989299" to the inputfield "#phone_mobile"
    When I set "MA Address" to the inputfield "#alias"
    When I click on the button "#submitAccount"
    Then I expect that element ".logout" becomes displayed
    Then I expect that element ".account" with text "A B"
    When I click on the element ".logout"

Scenario: Checkout a product
    Then I expect that element "#email" becomes displayed
    When I set "testp@gmail.com" to the inputfield "#email"
    When I set "123456" to the inputfield "#passwd"
    When I click on the button "#SubmitLogin"
    Then I expect that element ".myaccount-link-list" becomes displayed
    When I set "Shirts" to the inputfield "#search_query_top"
    When I click on the button ".button-search"
    When I click on the link "Faded Short Sleeve T-shirts"
    When I click on the button with class and text "=Add to cart"
    When I click on the button "Add to cart"
    When I click on the button with class and text "=Proceed to checkout"
    When I click on the element "#uniform-cgv"
    When I click on the link "Proceed to checkout"
    Then I expect that element ".product-name" with text "Faded Short Sleeve T-shirts"
