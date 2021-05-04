*** Settings ***
Resource                  ../resource/resource.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

#Setup roda KW antes da suite ou antes do teste
#Teardown roda KW depois da suite ou do teste

*** Variable ***
${URL}        http://automationpractice.com
${BROWSER}        Chrome

*** Test Case ***
Cenário 01: Pesquisar Produto Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "blouse"
    Então o produto "blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar Produto Não Existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "blouseX"
    Então a página deve exibir a mensagem "No results were found for your search "blouseX""

*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site

Quando eu pesquisar pelo produto "${Produto}"
    Sleep        3
    Digitar o nome de produto "${Produto}" no campo de pesquisa
    Clicar no botão de pesquisa

Então o produto "${Produto}" deve ser listado na página de resultado da busca
    Sleep        3
    Conferir se o produto "${Produto}" foi listado no site

Então a página deve exibir a mensagem "${Mensagem_Alerta}"
    Sleep        3
    Conferir mensagem de erro "${Mensagem_Alerta}"



