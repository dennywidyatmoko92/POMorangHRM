*** Settings ***
Library    SeleniumLibrary
Resource    ../element/login_element.robot
Resource    ../testdata/commons_testdata.robot

*** Keywords ***
input field username and password
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${field_input_username}    ${timeout_general}
    Input Text    ${field_input_username}    ${username} 
    Input Text    ${field_input_password}    ${password}
    Click Element    ${button_login}

verify fail invalid username
    Wait Until Element Is Visible    ${txt_fail_login}    ${timeout_general}
    Page Should Contain Element    ${txt_fail_login}
