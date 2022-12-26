*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***

*** Keywords ***
Load
    Go To  ${SITE_URL}

Verify Page Loaded
    Wait Until Page Contains    Your Account