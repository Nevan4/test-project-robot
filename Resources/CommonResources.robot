*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser For Tests
    open browser    https://www.ebay.com    chrome    options=add_argument("--no-sandbox")
    maximize browser window
    sleep    2s

Close Browser After Tests
    close browser