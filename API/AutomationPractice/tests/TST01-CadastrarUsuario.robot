*** Settings ***
Resource         ../resources/commons/Base.robot
Resource         ../resources/PageObject/PostCadastrarUsuario.robot
# Resource         ${EXECDIR}/resources/PageObject/POST.robot

Suite Setup         Conectar a minha API
Test Setup          Criar Sessão na ServerRest 
# Caso de teste em BDD
*** Test Case ***

Cenário 01: Cadastrar um novo usuario com sucesso
## Criar Cliente
  Dado que eu cadastre um novo usuario
  Quando eu solicitar cadastrar um usuario    email=${EMAIL_TESTE}    status_code_desejado=201
  Então o sistema devera cadastrar um novo cenario
#
#Cenário 02: Consultar Cliente Criado
## Consultar cliente cadastrado no cenario 1
#  Dado que eu tenha cadastrado um cliente
#  Quando eu solicitar pesquisar por um cliente cadastrado
#  Então deverá ser exibido o cadastro do cliente
#
#Cenário 03: Atualizar Cliente
## Atualizar cliente cadastro no cenario 2
#  Dado que eu tenha cadastrado um cliente
#  Quando eu solicitar atualizar os dados de um cliente 
#  Então os dados do cliente deverão ser atualizados
#
#Cenário 04: Deletar Cliente
## Atualizar cliente cadastro no cenario 2
#  Dado que eu tenha cadastrado um cliente
#  Quando eu solicitar excluir um cliente
#  Então esse cliente deverá ser deletado
