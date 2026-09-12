*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.resource

*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Submit Login
    Wait Until Element Is Visible    ${Dashboard_PAGE}

Login With Invalid Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Submit Login
    Wait Until Element Is Visible    ${ERROR_MESSAGE}

Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_INPUT}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_INPUT}    ${password}

Submit Login
    Click Button    ${LOGIN_BUTTON}

User Should See Dashboard
    Element Should Be Visible    ${Dashboard_PAGE}

User Should See Login Error
    Element Should Be Visible    ${ERROR_MESSAGE}