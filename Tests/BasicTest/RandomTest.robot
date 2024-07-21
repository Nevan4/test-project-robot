*** Settings ***
Documentation    This is only test

*** Variables ***
${NAME_VARIABLE}    Agata!

*** Test Cases ***
First Test Case
    [Documentation]    This is documentation for the first test case using user keyword
    Simple Test Case    Kacper!

Second Test Case
    [Documentation]    This is second test case using same keyword but with different argument
    Simple Test Case    ${NAME_VARIABLE}

*** Keywords ***
Simple Test Case
    [Documentation]    This is simple documentation
    [Tags]  tag1
    [Arguments]    ${arg}
    log    Running a tagged test and sending the scalar argument = ${arg}
