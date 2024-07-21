*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Select Electronics Category
    [Tags]    Action
    click element    link:Electronics   # couldn't create a proper xpath for this element
    sleep    2s