*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***
*** Variables ***
${TEAMS_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Click Teams Nav Button
    Click Element    ${TEAMS_LINK}