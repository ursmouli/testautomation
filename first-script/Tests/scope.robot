*** Settings ***

*** Variables ***
${MY_GLOBAL_VAR} =  Global value
${MY_VAR} =  abc


*** Test Cases ***
Create and log a variable
    ${my_variable} =  Set Variable  Test value
    ${my_var} =  Set Variable  def
    Log  ${my_variable}
    Log  ${MY_VAR}

Access a global variable
    ${MY_GLOBAL_VAR} =  Set Variable  Changed global var
    Log  Debug info ${MY_GLOBAL_VAR}
    Log  ${my_var}