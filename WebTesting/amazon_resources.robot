*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${browser}                             Chrome
${url_base}                            https://www.amazon.com.br/
${menu_eletronicos}                    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]    
${header_eletronicos}                  //h1[contains(.,'Eletrônicos e Tecnologia')]
${texto_header_eletronicos}            Eletrônicos e Tecnologia   

*** Keywords ***
Abrir navegador
    Open Browser                        browser=${browser}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acessar a homepage do site da Amazon
    Go To                                url=${url_base}
    Wait Until Element Is Visible        locator=${menu_eletronicos}

Entrar no menu "Eletrônicos"
    Click Element                        locator=${menu_eletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains             text=${texto_header_eletronicos}
    Wait Until Element Is Visible        locator=${header_eletronicos}

Verificar se o título da página fica "${titulo_pagina}"
    Title Should Be                       title=${titulo_pagina}

Verificar se aparece a categoria "${nome_categoria}"
    Element Should Be Visible            locator=//a[@aria-label='${nome_categoria}']

Digitar o nome de produto "${produto}" no campo de Pesquisa
    Input Text    locator=twotabsearchtextbox    text=Xbox Series S

Clicar no botão Pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa o resultado da pesquisa, listando o produro "${nome_produto}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${nome_produto}')])[2]

# gherkin steps
Dado que estou ma homepage da Amazon
    Acessar a homepage do site da Amazon
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando eu acessar o menu Eletrônicos
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando eu pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão Pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa o resultado da pesquisa, listando o produro "Console Xbox Series S"

   


    
    


    

    






