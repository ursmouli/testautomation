*** Settings ***
Library  SeleniumLibrary
Variables  Locators/Locators.py


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser
