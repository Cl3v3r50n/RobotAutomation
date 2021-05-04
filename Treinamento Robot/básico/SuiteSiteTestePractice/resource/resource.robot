*** Settings ***
Library        SeleniumLibrary

*** Variable ***
${URL}        http://automationpractice.com
${BROWSER}         Chrome

*** Keywords ***
###Setup & Teardown###
Abrir navegador
    Open Browser        http://automationpractice.com        ${BROWSER}

Fechar navegador
    Close Browser

###Passo-a-Passo###
Acessar a página home do site
    Go To        ${URL}
    Title Should Be        My Store

Digitar o nome de produto "${Produto}" no campo de pesquisa
    Input Text        name=search_query        ${Produto}
    Sleep               3

Clicar no botão de pesquisa
    Click Element        name=submit_search
    Sleep                3

Conferir se o produto "${Produto}" foi listado no site
    Wait Until Element is Visible        xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Conferir mensagem de erro "${Mensagem_Alerta}"
    Wait Until Element is Visible        //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be               //*[@id="center_column"]/p[@class='alert alert-warning']        ${Mensagem_Alerta}




