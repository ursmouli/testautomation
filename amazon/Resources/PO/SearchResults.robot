*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Element  xpath=//img[contains(@data-image-index, '2')]