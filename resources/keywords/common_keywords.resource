*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Open Application
    [Arguments]    ${config}
    Open Browser    ${config}[base_url]    ${config}[browser]
    Set Selenium Implicit Wait    ${config}[implicit_wait] seconds
    Set Selenium Timeout    ${config}[explicit_wait] seconds
    Maximize Browser Window

Close Application
    Close All Browsers

Capture Failure Screenshot
    [Arguments]    ${name}=failure
    Capture Page Screenshot    ${name}.png
