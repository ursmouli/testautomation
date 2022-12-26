*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "Ferrari 458"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Element  xpath=//img[contains(@data-image-index, '2')]