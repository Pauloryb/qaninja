*** Settings ***
Resource        open_close.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Abrir página
    Go To           ${url}
    
    driver.findElement(By.id("gbqfbb")).click();