*** Settings ***
Resource            ../Resource/resource.robot

Suite Setup        abrir navegador
Suite Teardown     fechar navegador

###SETUP roda KW antes da suite ou antes do teste
###TEARDOWN roda KW depois da suite ou depois do teste

*** Test Case ***
Caso de teste 01: Pesquisar produto existente
   Acessar página home do site
   Digitar o nome do produto "Blouse" no campo de Pesquisa
   Clicar no botão Pesquisar
   Conferir se o produto "Blouse" foi listado no site

Caso de teste 02: Pesquisar produto não existente
   Acessar página home do site
   Digitar o nome do produto "itemNãoExistente" no campo de Pesquisa
   Clicar no botão Pesquisar
   Conferir mensagem de erro "No results were found for your search "itemNãoExistente""

*** Keywords ***
