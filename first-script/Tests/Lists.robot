*** Settings ***

*** Variables ***
@{MY_VARIABLE} =  Hello there  This is value 2  This is value 3

*** Test Cases ***
List variable demonstration
    Log  Display list item 0 : ${MY_VARIABLE}[0]
    Log  Display lis tiem 1 : ${MY_VARIABLE}[1]
    Log  Display list item 2 : ${MY_VARIABLE}[2]

List variable demonstration 2
    @{my_list_variable} =  Create List  Item 1  Item 2  Item 3
    Log  Display list item 0 : ${my_list_variable}[0]
    Log  Display lis tiem 1 : ${my_list_variable}[1]
    Log  Display list item 2 : ${my_list_variable}[2]
