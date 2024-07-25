*** Settings ***
Library    SeleniumLibrary
Variables    ../Webelements.py

*** Variables ***
${input_search_text}    mobile

@{input_search_list}    mobile  travel  book    gift

&{search_text}  first=books    second=speaker    third=mobile

${SearchTextBox}    css:#gh-ac
${SearchButton}    id:gh-btn

*** Keywords ***
Search For Mobile
#    input text    css:#gh-ac  ${input_search_text}
#    input text    css:#gh-ac  ${input_search_list}[1]
#    input text    ${SearchTextBox}    ${search_text.third}
    input text    ${SearchTextBox}  ${input_search_text}
    click element    ${SearchButton}
    sleep   1s

Keyword With Argument Search
    [Arguments]    ${keyword_search_text}
    input text    css:#gh-ac  ${keyword_search_text}
    click element    id:gh-btn
    sleep   1s

Search For Mobile With Webelements From Python File
    input text    ${HomePageSearchTextBox}  ${HomePageInputSearchText}
    click element    ${HomePageSearchButton}
    sleep   1s