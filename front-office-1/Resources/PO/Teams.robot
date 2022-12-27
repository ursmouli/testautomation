*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***
${TEAMS_HEADER} =  OUR AMAZING TEAM
${TEAMS_HEADER_ELEMENT} =  xpath=//*[@id="team"]/div/div[1]/div/h2


*** Keywords ***
Verify Teams Header
    Element Should Contain    ${TEAMS_HEADER_ELEMENT}    ${TEAMS_HEADER}
