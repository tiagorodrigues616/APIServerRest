*** Settings ***
Resource         ../resources/commons/Base.robot
Resource         ../resources/PageObject/PostCadastrarUsuario.robot
Resource         ../resources/PageObject/GetCadastrarUsuario.robot
# Resource         ${EXECDIR}/resources/PageObject/POST.robot

Suite Setup         Conectar a minha API
Test Setup          Criar Sessão na ServerRest 
# Caso de teste em BDD
*** Test Case ***

Cenário 02: Consultar Cliente Criado
    Dado que eu cadastre um novo usuario
    Quando eu solicitar cadastrar um usuario    email=${EMAIL_TESTE}    status_code_desejado=201
    E eu solicitar pesquisar por um cliente    ${IDUSUARIO}
    Entao o sistema deverá retornar o cliente pesquisado 