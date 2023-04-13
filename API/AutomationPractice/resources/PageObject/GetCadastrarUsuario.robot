*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Library    RequestsLibrary

*** Keywords ***
E eu solicitar pesquisar por um cliente
    [Arguments]    ${IDUSUARIO}
    ${resposta_consulta}    GET On Session    alias=ServeRest    url=/usuarios/${IDUSUARIO}    expected_status=200
    Set Test Variable    ${RESP_CONSULTA}    ${resposta_consulta.json()}
    
Entao o sistema deverá retornar o cliente pesquisado
     Log     ${RESP_CONSULTA}
     Dictionary Should Contain Item    ${RESP_CONSULTA}    nome             ${NOME} 
     Dictionary Should Contain Item    ${RESP_CONSULTA}    email            email=${EMAIL_TESTE} 
     Dictionary Should Contain Item    ${RESP_CONSULTA}    password         ${PASSWORD} 
     Dictionary Should Contain Item    ${RESP_CONSULTA}    administrador    true
     Dictionary Should Contain Item    ${RESP_CONSULTA}    _id              ${IDUSUARIO} 
    
    







