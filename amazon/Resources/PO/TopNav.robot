*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Variables ***

*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search
    

Enter Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    Click Button  xpath=//*[@id="nav-search-submit-button"]