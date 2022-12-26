*** Settings ***

*** Variables ***
${MY_VARIABLE} =  Input data

*** Test Cases ***
Variable demonstration
    Log  ${MY_VARIABLE}

Set variable in test case
    [Tags]  Current
    ${my_new_variable} =  Set Variable  My new variable
    Log    ${my_new_variable}