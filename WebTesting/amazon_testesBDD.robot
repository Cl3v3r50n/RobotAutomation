*** Settings ***
Documentation        suite testa o site da Amazon
Resource             amazon_resources.robot
Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***

Caso de teste 01: Acesso ao menu "Eletrônicos"
    [Documentation]    Teste para verificar o menu eletronicos do site da amazon
    [Tags]             menus
    Dado que estou ma homepage da Amazon
    Quando eu acessar o menu Eletrônicos
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Caso de teste 02: Pesquisa de produto
    [Documentation]    teste para validar a busca de produto específico
    [Tags]             busca_produtos
    Dado que estou ma homepage da Amazon
    Quando eu pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br:Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página



