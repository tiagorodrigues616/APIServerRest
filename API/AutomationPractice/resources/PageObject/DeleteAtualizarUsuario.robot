*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Library    RequestsLibrary


*** Keywords ***

E eu solicito deletar um usuario
    [Arguments]    ${IDUSUARIO}
    ${resposta_delete}   DELETE On Session    alias=ServeRest    url=/usuarios/${IDUSUARIO}    expected_status=200    
    Set Test Variable    ${RESP_DELETE}    ${resposta_delete.json()}
    Dictionary Should Contain Item    ${RESP_DELETE}    message    Registro excluído com sucesso

Então o sistema deleta o cadastro do usuario 
     ${resposta_delete}     GET On Session    alias=ServeRest    url=/usuarios/${IDUSUARIO}   expected_status=400
     Set Test Variable    ${RESP_DELETE}    ${resposta_delete.json()}
     Log    ${RESP_DELETE}
    






