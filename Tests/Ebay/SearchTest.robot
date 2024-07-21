*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonResources.robot
Resource    ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup    Open Browser For Tests
Test Teardown    Close Browser After Tests

*** Variables ***


*** Test Cases ***
Verify basic search and filter options for eBay
    [Documentation]    This test case verifies the basic search and filter options
    [Tags]    Functional
    Search For Mobile
    Verify Search Results
    Buy It Now Option
    Verify Buy It Now Option

