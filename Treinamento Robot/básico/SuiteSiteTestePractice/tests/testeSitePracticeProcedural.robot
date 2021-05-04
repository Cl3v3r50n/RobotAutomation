*** Settings ***
resource        ../resource/resource.robot
Test Setup        Abrir navegador
Test Teardown        Fechar navegador

#Setup roda KW antes da suite ou antes do teste
#Teardown roda KW depois da suite ou do teste

*** Test Case ***
Caso de teste 1: Pesquisar produto existente
    Acessar a página home do site
    #Conferir se a página foi exibida
    Digitar o nome de produto "Blouse" no campo de pesquisa
    Clicar no botão de pesquisa
    Conferir se o produto "Blouse" foi listado no site

Caso de teste 2: Pesquisar produto não existente
    Acessar a página home do site
    #Conferir se a página foi exibida
    Digitar o nome de produto "ProdutoNãoEncontrado" no campo de pesquisa
    Clicar no botão de pesquisa
    Conferir mensagem de erro "No results were found for your search "ProdutoNãoEncontrado""