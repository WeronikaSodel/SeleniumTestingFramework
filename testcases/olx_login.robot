*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.olx.pl/
${USER}    t6470292@gmail.com
${PASSWORD}     WSBtest1234!!
*** Test Cases ***

Olx login test

    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Title Should Be    Ogłoszenia - Sprzedam, kupię na OLX.pl
    # Kliknij w element
    wait until element is visible   id=onetrust-accept-btn-handler
    Click Element    id=onetrust-accept-btn-handler
    Click element    class=css-12l1k7f
    wait until element is visible    class=css-2os53m
    input text    class=css-2os53m      ${USER}
    input text    class=css-1kzly1g     ${PASSWORD}
    Click button  class=css-ypypxs
    sleep    5




*** Keywords ***