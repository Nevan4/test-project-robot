*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_search_text}    mobile

*** Keywords ***
Search For Mobile
    input text    css:#gh-ac  ${input_search_text}
    click element    id:gh-btn
    sleep   1s
