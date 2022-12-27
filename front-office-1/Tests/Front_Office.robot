*** Settings ***
Documentation  Front office website tests
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot

Test Setup  CommonWeb.Begin Web Test
Test Teardown  CommonWeb.End Web Test

# run below command to execute test script
# robot -d results tests/front_office.robot

*** Variables ***

*** Test Cases ***
Should be able to access "Team" Page
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page

"Team" page should match requirements
    [Tags]  Smoke
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page
    FrontOfficeApp.Validate "Team" Page
