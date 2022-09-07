*** Settings ***
Library    SeleniumLibrary
Resource    ../testdata/commons_testdata.robot

*** Keywords ***
start open browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

close the browser
    Close Browser         