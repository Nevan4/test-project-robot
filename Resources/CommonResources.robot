*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${env}    test
&{url}    qa=http://qa.demo.com  uat=http://uat.demo.com  test=https://www.ebay.com
*** Keywords ***
Open Browser For Tests
#    open browser    ${url.test}    chrome    options=add_argument("--no-sandbox")
    open browser    ${url.${env}}    chrome    options=add_argument("--no-sandbox")
    maximize browser window
    sleep    2s

Close Browser After Tests
    close browser