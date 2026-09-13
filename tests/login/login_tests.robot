*** Settings ***
Documentation    Login coverage for the enterprise UI automation framework.
Resource         ../../resources/keywords/common_keywords.resource
Resource         ../../resources/keywords/configuration_keywords.resource
Resource         ../../resources/pageobjects/login_page.resource
Suite Setup      Load Test Configuration
Suite Teardown   Close Application
Test Teardown    Run Keyword If Test Failed    Capture Failure Screenshot

*** Test Cases ***
Valid user can log in
    [Tags]    smoke    regression    login
    Open Application    ${CONFIG}
    Login With Valid Credentials    ${CONFIG}[username]    ${CONFIG}[password]
    User Should See Dashboard

Invalid user sees a login error
    [Tags]    regression    login
    Open Application    ${CONFIG}
    Login With Invalid Credentials    invalid_user    invalid_password
    User Should See Login Error

