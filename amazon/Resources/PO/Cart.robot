*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Cart

Proceed to checkout
    Click Button    xpath=//*[@id="sc-buy-box-ptc-button"]/span/input