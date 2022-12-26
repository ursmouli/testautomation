*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
User can search for products
    Begin Web Test  https://www.amazon.com  firefox
    @{list_var} =  Create List  https://www.amazon.com  firefox
    List Begin Web Test  @{list_var}

*** Keywords ***
Begin Web Test
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Close Browser

List Begin Web Test
    [Arguments]  @{list_var}
    Open Browser  ${list_var}[0]  ${list_var}[1]
    Close Browser   