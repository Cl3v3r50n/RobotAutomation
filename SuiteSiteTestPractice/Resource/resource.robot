*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${BROWSER}            Chrome 
${URL}                http://automationpractice.com/

*** Keywords ***
###Setup e Teardown###

Abrir navegador
    Open BROWSER        about:blank        ${BROWSER}

Fechar navegador
    Close BROWSER

###Passo-a-Passo###

Acessar página home do site
    Go To                  http://automationpractice.com/
    Title Should Be        My Store

Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text        name=search_query        ${PRODUTO}

Clicar no botão Pesquisar
    Click Element        name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element is Visible    css=#center_column > h1
    Title Should Be                  Search - My Store
    Page Should Contain Image    xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible    //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be    //*[@id="center_column"]/p[@class='alert alert-warning']    ${MENSAGEM_ALERTA}
    


