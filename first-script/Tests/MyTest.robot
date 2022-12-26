*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary


*** Test Cases ***
User must sign in to check out
    [Documentation]  User should open browser and add items to cart and checkout items
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  firefox
    Wait Until Page Contains  Your Account
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Sleep  3s
    Wait Until Page Contains  results for "Ferrari 458"
    Click Element  xpath=//img[contains(@data-image-index, '2')]
    Wait Until Page Contains  Back to results
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Added to Cart
    Sleep  5s
    Click Element  xpath=//span[@id="attach-sidesheet-checkout-button"]
    Page Should Contain Element  continue-announce
    Element Text Should Be  continue-announce  Continue
    Close Browser

*** Keywords ***
