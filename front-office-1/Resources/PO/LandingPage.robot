*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py


*** Variables ***
${SITE_HEADER} =  Welcome To Our Studio!
${MAIN_NAVIGATION} =  id=mainNav

*** Keywords ***
Load
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains Element    ${MAIN_NAVIGATION}