
*** Settings ***
Documentation  This is some basic info about whole suite
Resource  ../Resources/Common.robot  # necessary for SetUp and TearDown
Resource  ../Resources/AmazonApp.robot  # necessary for lower level keywords in test cases

Suite Setup  Common.Insert Test Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Clear Test Data

# Copy/Paste below line to Terminal window to execute
# robot -d Results Tests/Amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    AmazonApp.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke  CheckOut
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    Sleep  5s
    AmazonApp.Begin Checkout
