*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Library    RequestsLibrary

*** Variables ***
${NOME_ALTERADO}        Tiago Rodrigues
${PASSWORD_ALTERADO}    1234567

*** Keywords ***
E eu solicito editar o cadastro 
    [Arguments]    ${IDUSUARIO}    ${EMAIL_TESTE}    ${status_code_desejado}
    
    ${palavra-aleatoria}    Generate Random String    length=4    chars=[LETTERS]
    Set Test Variable    ${EMAIL_TESTE}    ${palavra-aleatoria}@mail.com
    Log    ${EMAIL_TESTE} 
    
    #prepara o body para editar os dados
    ${body}     Create Dictionary    
    ...        nome=${NOME_ALTERADO}
    ...        email=email=${EMAIL_TESTE}    
    ...        password=${PASSWORD_ALTERADO}     
    ...        administrador=false
    Log    ${body}

    Set Test Variable    ${body}
    
    ${resposta}    Put On Session    
    ...            alias=ServeRest
    ...            url=/usuarios/${IDUSUARIO}
    ...            json=${body}
    ...            expected_status=${status_code_desejado}

Então o sistema atualiza o cadastro do usuario 
     ${resposta_get}     GET On Session    alias=ServeRest    url=/usuarios/${IDUSUARIO}   expected_status=200
     Set Test Variable    ${RESP_GET}    ${resposta_get.json()}

     Log    ${RESP_GET}

     Dictionary Should Contain Item    ${RESP_GET}    nome             ${NOME_ALTERADO}
     Dictionary Should Contain Item    ${RESP_GET}    email            email=${EMAIL_TESTE} 
     Dictionary Should Contain Item    ${RESP_GET}    password         ${PASSWORD_ALTERADO} 
     Dictionary Should Contain Item    ${RESP_GET}    administrador    false





