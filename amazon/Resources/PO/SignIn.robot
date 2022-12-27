*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_PAGE_CONTNUE_BUTTON} =  continue-announce

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGN_IN_PAGE_CONTNUE_BUTTON}
    Element Text Should Be  ${SIGN_IN_PAGE_CONTNUE_BUTTON}  Continue