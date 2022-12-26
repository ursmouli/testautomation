*** Settings ***

*** Variables ***
${MY_GLOBAL_VAR} =  Global value


*** Test Cases ***
Create and log a variable
    ${my_variable} =  Set Variable  Test value
    Log  ${my_variable}

Access a global variable
    ${MY_GLOBAL_VAR} =  Set Variable  Changed global var
    Log  Debug info ${MY_GLOBAL_VAR}