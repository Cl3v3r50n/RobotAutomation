*** Settings ***
Documentation        suite testa o site da Amazon
Resource             amazon_resources.robot
Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***

Caso de teste 01: Acesso ao menu "Eletrônicos"
    [Documentation]    Teste para verificar o menu eletronicos do site da amazon
    [Tags]             menus
    Acessar a homepage do site da Amazon
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02: Pesquisa de produto
    [Documentation]    teste para validar a busca de produto específico
    [Tags]             busca_produtos
    Acessar a homepage do site da Amazon
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão Pesquisa
    Verificar o resultado da pesquisa o resultado da pesquisa, listando o produro "Console Xbox Series S"
