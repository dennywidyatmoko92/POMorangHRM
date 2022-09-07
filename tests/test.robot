*** Settings ***
Library    SeleniumLibrary
Resource    ../logic/login_logic.robot
Resource    ../logic/home_logic.robot
Resource    ../testdata/user_testdata.robot
Resource    ../commons/commons.robot
Suite Setup    start open browser
Suite Teardown    close the browser    

*** Test Cases ***
as a user I can't login with the wrong username and password
    input field username and password    ${invalid_user}    ${valid_pass}
    verify fail invalid username

as a user I can't login with the wrong username and password
    input field username and password    ${valid_user}    ${valid_pass}
    verify side menu appear