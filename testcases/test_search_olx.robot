*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/custom_keywords.robot

*** Variables ***
${URL}          https://www.olx.pl/
${SEARCH_PHRASE}        kot brytyjski
${SEARCH_LOCATOR}       id=search

*** Test Cases ***

Test Search Olx
    Open Browser  ${URL}  chrome

    # Accept cookies
    Wait For Element And Click      id=onetrust-accept-btn-handler

    # Input search text
    Wait For Element And Send Text       ${SEARCH_LOCATOR}    ${SEARCH_PHRASE}

    # Press search button
    Wait For Element And Click       class=css-1xla5xw
