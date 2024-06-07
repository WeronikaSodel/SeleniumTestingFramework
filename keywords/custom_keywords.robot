*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Wait For Element And Click
    [Arguments]     ${locator}
    wait until element is visible   ${locator}
    Click Element   ${locator}

Wait For Element And Send Text
    [Arguments]    ${locator}   ${text}
    wait until element is visible   ${locator}
    input text   ${locator}   ${text}