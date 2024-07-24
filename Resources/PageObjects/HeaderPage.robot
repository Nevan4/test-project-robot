*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_search_text}    mobile

@{input_search_list}    mobile  travel  book    gift

&{search_text}  first=books    second=speaker

*** Keywords ***
Search For Mobile
#    input text    css:#gh-ac  ${input_search_text}
#    input text    css:#gh-ac  ${input_search_list}[1]
    input text    css:#gh-ac  ${search_text.first}
    click element    id:gh-btn
    sleep   1s

Keyword With Argument Search
    [Arguments]    ${keyword_search_text}
    input text    css:#gh-ac  ${keyword_search_text}
    click element    id:gh-btn
    sleep   1s