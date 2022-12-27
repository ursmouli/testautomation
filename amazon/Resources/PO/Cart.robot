*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PROCEED_CHECKOUT_BUTTON} =  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input

*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Cart

Proceed to checkout
    Click Button    ${PROCEED_CHECKOUT_BUTTON}