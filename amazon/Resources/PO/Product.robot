*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Back to results

Add to Cart
    Click Button  xpath=//*[@id="add-to-cart-button"]