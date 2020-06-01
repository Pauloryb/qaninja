
*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome     Paulo
    Should Be Equal     ${result}   Olá Paulo, bem vindo ao Curso básico de Robot Framework!
