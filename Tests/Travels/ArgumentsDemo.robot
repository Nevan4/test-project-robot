*** Settings ***

*** Test Cases ***
#This is not a good example of creating such arguments in a data driven tests but just an example for understanding
Argument Demo Keyword Test
    Argument Demo Keyword    passed_argument_one    passed_argument_two

Second Argument Demo Keyword Test
    Argument Demo Keyword    new_passed_argument_one    new_passed_argument_two

*** Keywords ***
Argument Demo Keyword
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}