*** Settings ***

Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

Google Test    

    Open Browser  https://www.google.com/  chrome
    Maximize Browser Window
    Title Should Be    Google

*** Keywords ***
