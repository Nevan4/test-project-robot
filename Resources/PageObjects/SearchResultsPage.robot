*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Search Results
    [Tags]    Result
    page should contain    results for mobile
    sleep   2s

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