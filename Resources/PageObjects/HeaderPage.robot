*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_search_text}    mobile

@{input_search_list}    mobile  travel  book    gift

*** Keywords ***
Search For Mobile
    input text    css:#gh-ac  ${input_search_list}[1]
    click element    id:gh-btn
    sleep   1s
