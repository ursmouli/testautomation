*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***
${TEAMS_HEADER} =  OUR AMAZING TEAM
${TEAMS_HEADER_ELEMENT} =  xpath=//*[@id="team"]/div/div[1]/div/h2


*** Keywords ***
Validate "Team" Header
    ${ElementText} =  Get Text    ${TEAMS_HEADER_ELEMENT}
    Should Be Equal As Strings    ${ElementText}    Our Amazing Team  ignore_case=True
    # Element Should Contain    ${TEAMS_HEADER_ELEMENT}    ${TEAMS_HEADER}
