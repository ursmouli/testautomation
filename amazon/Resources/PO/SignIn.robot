*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  continue-announce
    Element Text Should Be  continue-announce  Continue