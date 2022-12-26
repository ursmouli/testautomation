*** Settings ***
Library  SeleniumLibrary
Variables  Locators/Locators.py

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    # maximize browser window
    Maximize Browser Window

End Web Test
    Close Browser

Insert Test Data
    Log  inserting sample test data ...

Clear Test Data
    Log  clearing sample test data ...