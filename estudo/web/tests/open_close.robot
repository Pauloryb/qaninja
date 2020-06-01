*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      http://br.mail.yahoo.com/

*** Keywords ***
Nova sessão
    Open Browser                    ${url}          chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser