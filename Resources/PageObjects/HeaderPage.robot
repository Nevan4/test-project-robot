*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Search For Mobile
    input text    css:#gh-ac    mobile
    click element    id:gh-btn
    sleep   1s
