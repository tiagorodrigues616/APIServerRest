*** Settings ***
Resource         ../resources/commons/Base.robot
Resource         ../resources/PageObject/PostCadastrarUsuario.robot
Resource         ../resources/PageObject/GetCadastrarUsuario.robot
Resource         ../resources/PageObject/PutAtualizarUsuario.robot
# Resource         ${EXECDIR}/resources/PageObject/POST.robot

Suite Setup         Conectar a minha API
Test Setup          Criar Sessão na ServerRest 
# Caso de teste em BDD
*** Test Case ***

Cenário 02: Atualizar Cadastro Usuario
    Dado que eu cadastre um novo usuario
    Quando eu solicitar cadastrar um usuario    email=${EMAIL_TESTE}    status_code_desejado=201
    E eu solicito editar o cadastro         ${IDUSUARIO}    email=${EMAIL_TESTE}     status_code_desejado=200
    Então o sistema atualiza o cadastro do usuario 
    
