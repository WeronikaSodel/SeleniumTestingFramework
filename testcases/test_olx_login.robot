*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/custom_keywords.robot

*** Variables ***
${URL}          https://www.olx.pl/
${USER}         t6470292@gmail.com
${PASSWORD}     WSBtest1234!!

*** Test Cases ***

Test Olx Login
    Open Browser  ${URL}  chrome
    Maximize Browser Window

    # Verify if olx.pl title is valid
    Title Should Be     Ogłoszenia - Sprzedam, kupię na OLX.pl

    # Accept cookies
    Wait For Element And Click      id=onetrust-accept-btn-handler

    # Click your account to login
    Wait For Element And Click      class=css-12l1k7f
    Wait For Element And Click      class=css-2os53m

    # Input user name in loging page
    Wait For Element And Send Text      class=css-2os53m      ${USER}

    # Input password in loging page
    Wait For Element And Send Text      class=css-1kzly1g     ${PASSWORD}

    # Click login button
    Wait For Element And Click      class=css-ypypxs
