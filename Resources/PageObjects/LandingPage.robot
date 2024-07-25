*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SearchCategory}    link:Electronics   # couldn't create a proper xpath for this element

*** Keywords ***
Select Electronics Category
    [Tags]    Action
    click element    ${SearchCategory}
    sleep    2s