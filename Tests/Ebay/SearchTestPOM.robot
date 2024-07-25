*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/CommonResources.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/LandingPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup    CommonResources.Open Browser For Tests
Test Teardown    CommonResources.Close Browser After Tests

*** Variables ***


*** Test Cases ***
Verify basic search and filter options for eBay
    [Documentation]    This test case verifies the basic search and filter options
    [Tags]    Functional
    HeaderPage.Search For Mobile
    SearchResultsPage.Verify Search Results
    SearchResultsPage.Buy It Now Option
    SearchResultsPage.Verify Buy It Now Option

Verify Basic Category Option Choose
    [Documentation]    This test case verifies the basic choose of a landing page category
    [Tags]    Functional
    LandingPage.Select Electronics Category
    SearchResultsPage.Verify Category Option Choose

Verify Basic Search Using Keyword Arguments
    [Documentation]    This test case uses keyword arguments to execute basic search test
    [Tags]    Keyword Argument
    HeaderPage.Keyword With Argument Search    robot
    SearchResultsPage.Verify Search Results With Keyword Argument    robot


Verify Basic Search Using Webelements From Exteral File
    [Documentation]    This test case uses webelements, i.e. locators from external file
    [Tags]    Webelements
    HeaderPage.Search For Mobile With Webelements From Python File
    SearchResultsPage.Verify Search Results With Keyword Argument    mobile