*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search
    

Enter Search Term
    Input Text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    Click Button  xpath=//*[@id="nav-search-submit-button"]