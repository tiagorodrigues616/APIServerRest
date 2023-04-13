*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary

*** Variables ***
${URL_API}      https://serverest.dev

*** Keywords ***

#Criar sessao e validar se está ok
Conectar a minha API
    Create Session    AutomationPractice     ${URL_API}    verify=true

Criar Sessão na ServerRest
    ${headers}        Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest    url=${URL_API} 

    
