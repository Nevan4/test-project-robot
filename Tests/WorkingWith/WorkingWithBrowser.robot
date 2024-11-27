*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Basic Common Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demonstrate Browser Operation Keywords in Robot Framework
    Open Browser    http://google.com    Chrome    alias=ChromeKacper

    Maximize Browser Window

    Open Browser    http://allegro.pl    ff    alias=ffKacper

    @{alias}    Get Browser Aliases

    Log    ${alias}

    @{browser_ID}  Get Browser Ids

    Log    ${browser_ID}

    Switch Browser    1

    Click Element    //div[text()="Odrzuć wszystko"]

    Input Text    //textarea[@title="Szukaj"]    Ryba

    Sleep    2s

    Close All Browsers