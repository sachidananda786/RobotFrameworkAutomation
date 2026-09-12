*** Settings ***
Library    ../../libraries/framework_library.py

*** Keywords ***
Load Test Configuration
    ${config}=    Load Environment Config    %{TEST_ENV=qa}
    Set Suite Variable    ${CONFIG}    ${config}