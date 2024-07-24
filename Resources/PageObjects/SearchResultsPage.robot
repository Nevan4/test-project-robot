*** Settings ***
Library    SeleniumLibrary
Resource   ./HeaderPage.robot     # import search value to verify in the tests

*** Variables ***
${search_result}    results for

*** Keywords ***
Verify Search Results
    [Tags]    Result
    #                       starting search phrase | search text
#    page should contain    ${search_result} ${input_search_list}[1]    # input search imported from headerpage
    page should contain    ${search_result} ${search_text.first}   # input search imported from headerpage
    sleep   2s

Verify Search Results With Keyword Argument
    [Tags]    Keyword Argument
    [Arguments]    ${keyword_verify_text}
    Page Should Contain    ${search_result} ${keyword_verify_text}

Buy It Now Option
    [Tags]    Action
    click element  xpath: //*[contains(text(), "Buy It Now")]


Verify Buy It Now Option
    [Tags]    Result
    Wait Until Element Is Visible    //a[@aria-current="page"]    2s
    ${span}=    Get WebElement    //a[@aria-current="page"]/span[@class="srp-format-tabs-h2"]
    ${aria_label}=    Get Element Attribute    ${span}    aria-label
    should be equal    ${aria_label}   Buy It Now selected


Verify Category Option Choose
    [Tags]    Result
    Wait Until Element Is Visible    //h1[@class="b-pageheader"]/span[@class="b-pageheader__text"]    2s
    Element Text Should Be  //h1[@class="b-pageheader"]/span[@class="b-pageheader__text"]    Electronics






# simple debug prints option example:
#${header_text}    Get Text    //h1[@class="b-pageheader"]/span[@class="b-pageheader__text"]
#Log    ${header_text}