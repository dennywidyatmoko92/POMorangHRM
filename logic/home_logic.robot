*** Settings ***
Library    SeleniumLibrary
Resource    ../element/home_element.robot
Resource    ../testdata/commons_testdata.robot

*** Keywords ***
verify side menu appear
    Wait Until Element Is Visible    ${side_menu}    ${timeout_general}
    Page Should Contain Element    ${side_menu} 