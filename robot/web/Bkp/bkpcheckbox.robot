*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
    Open Browser                    ${url}              chrome
    Go To                           ${url}/checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           5
    Close Browser
    
Marcando opção com CSS Selector
    Open Browser                    ${url}              chrome
    Go To                           ${url}/checkboxes
    Select checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Sleep                           5
    Close Browser

Marcando opção com Xpath
    Open Browser                    ${url}              chrome
    Go To                           ${url}/checkboxes
    Select checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           5
    Close Browser