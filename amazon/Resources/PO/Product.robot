*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON} =  xpath=//*[@id="add-to-cart-button"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Back to results

Add to Cart
    Click Button  ${ADD_TO_CART_BUTTON}