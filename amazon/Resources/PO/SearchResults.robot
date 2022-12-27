*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***
${SEARCH_FIRST_NON_SPONSERED_ITEM_IMG} =  xpath=//img[contains(@data-image-index, '2')]


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Element  ${SEARCH_FIRST_NON_SPONSERED_ITEM_IMG}