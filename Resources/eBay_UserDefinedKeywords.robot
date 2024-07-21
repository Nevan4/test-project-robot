*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search For Mobile
    input text    css:#gh-ac    mobile
    click element    id:gh-btn
    sleep   1s
Verify Search Results
    page should contain    results for mobile
    sleep   2s

Buy It Now Option
    click element  xpath: //*[contains(text(), "Buy It Now")]

Verify Buy It Now Option
    Wait Until Element Is Visible    //a[@aria-current="page"]    5s
    ${span}=    Get WebElement    //a[@aria-current="page"]/span[@class="srp-format-tabs-h2"]
    ${aria_label}=    Get Element Attribute    ${span}    aria-label
    should be equal    ${aria_label}   Buy It Now selected