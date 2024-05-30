*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.google.com/

*** Test Cases ***

Google Test    

    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Title Should Be    Google

*** Keywords ***
