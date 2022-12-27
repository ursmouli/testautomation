*** Settings ***
Resource  ./PO/TopNav.robot
Resource  ./PO/Teams.robot
Resource  ./PO/LandingPage.robot

*** Keywords ***
Go To Landing Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Go To "Team" Page
    TopNav.Click Teams Nav Button
    LandingPage.Verify Page Loaded

Validate "Team" Page
    Teams.Validate "Team" Header