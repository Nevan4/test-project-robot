# Test suite scope
# Variables with the test suite scope are available anywhere in the test suite
# where they are defined or imported

# Test case scope
# Variables with the test case scope are visible in a test case and in all user keywords the test uses

# Local scope
# Test cases and user keywords have a local variable scope that is not seen by the other tests or keywords

*** Settings ***

*** Variables ***

${GLOBAL_VARIABLE}    This is GLOBAL variable     # global variables shoud be uppercase

*** Test Cases ***
Demo Test Case 1
    Log    ${GLOBAL_VARIABLE}
#    Log    ${local_variable}    # cannot reach testcase variable from another test

Demo Test Case 2
    ${local_variable}   set variable    This is TESTCASE variable
    Log    ${GLOBAL_VARIABLE}
    Log    ${local_variable}

Demo Test Case 3
    This Is Demo Keyword 1

Demo Test Case 4
    This Is Demo Keyword 2

*** Keywords ***
This Is Demo Keyword 1
    Log    ${GLOBAL_VARIABLE}

This Is Demo Keyword 2
    [Arguments]    ${keyword_argument}=This is KEYWORD variable
#    [Arguments]    ${local_variable}= Overwritten local variable
#    Log    ${local_variable}
    Log    ${GLOBAL_VARIABLE}
    Log    ${keyword_argument}
