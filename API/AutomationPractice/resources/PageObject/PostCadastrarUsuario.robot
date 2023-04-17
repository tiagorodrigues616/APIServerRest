*** Settings ***
Resource         ../commons/Base.robot
Library    SeleniumLibrary
Library    String
Library    Collections
Library    RequestsLibrary

*** Variables ***

${NOME}        Rodrigues Tiago
${PASSWORD}    123456

*** Keywords ***

Dado que eu cadastre um novo usuario
    ${palavra-aleatoria}    Generate Random String    length=4    chars=[LETTERS]
    Set Test Variable    ${EMAIL_TESTE}    ${palavra-aleatoria}@mail.com
    Log    ${EMAIL_TESTE} 

Quando eu solicitar cadastrar um usuario 
    [Arguments]    ${EMAIL_TESTE}    ${status_code_desejado}
    ${body}     Create Dictionary    
    ...        nome=${NOME}
    ...        email=${EMAIL_TESTE}    
    ...        password=${PASSWORD}     
    ...        administrador=true
    Log    ${body}

    ${resposta}    POST On Session    
    ...            alias=ServeRest
    ...            url=/usuarios
    ...            json=${body}
    ...            expected_status=${status_code_desejado}
    
    Log    ${resposta.json()}
    Set Test Variable    ${IDUSUARIO}    ${resposta.json()["_id"]}
    Set Test Variable    ${RESPOSTA}     ${resposta.json()}
    
    Log    ${RESPOSTA}   
    Log    ${IDUSUARIO}     
    
Então o sistema devera cadastrar um novo cenario
    Dictionary Should Contain Item    ${RESPOSTA}    message    Cadastro realizado com sucesso
    Status Should Be    201    

    
    







