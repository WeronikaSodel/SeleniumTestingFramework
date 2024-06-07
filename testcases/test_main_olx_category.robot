*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/custom_keywords.robot

*** Variables ***
${URL}          https://www.olx.pl/
&{CATEGORY}     Antiques = class=css-16tr9nw    Moto = class=css-447m8m     Realestate = class=css-fs5sl6   Work = class=css-cgy41y

*** Test Cases ***

Test Main Olx Category
    Open Browser  ${URL}  chrome
    # Accept cookies
    Wait For Element And Click      id=onetrust-accept-btn-handler

    FOR    ${key}    ${value}    IN    &{CATEGORY}
       Verify If Locator Exists  ${key}      ${value}
    END

