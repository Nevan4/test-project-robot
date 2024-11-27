*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search For Mobile
    input text    css:#gh-ac    mobile
    click element    id:gh-btn
    sleep   1s
Verify Search Results
    page should contain    results for mobile
    sleep   3s

Buy It Now Option
    # not needed to clicking the banner, just wait one second more, so the banner from the land page can hide
    # better solution is to find some element and use wait until <---
    click element  xpath: //*[contains(text(), "Buy It Now")]

Verify Buy It Now Option
    Wait Until Element Is Visible    //a[@aria-current="page"]    5s
    ${span}=    Get WebElement    //a[@aria-current="page"]/span[@class="srp-format-tabs-h2"]
    log    ${span}
    ${aria_label}=    Get Element Attribute    ${span}    aria-label
    log    ${aria_label}
    should be equal    ${aria_label}   Buy It Now selected