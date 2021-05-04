*** Settings ***
Documentation        Aqui são inseridas as configurações e apontamentos para cada arquivo

*** Variable ***
Documentation        Aqui são inseridas as variáveis que o robot chama em cada execução
Documentation        pode ser usado locators
${nome_variável}        url/locator/css/botão


*** Keywords ***
Documentation        aqui são implementadas as palavras chaves (key words) para executar os testes
documentation        cada linha do BDD é uma key word

*** Test Case ***
Documentation        Aqui são escritos os casos de teste que serão convertidos em KW (key words)
Dado
Quando
Então


/*Adendos*/
test data
    imput de dados
Robot        
    imterpretador
    procurar as kw nas libraries

comandos para execução

robot -d ./results tests\testeSitePracticeProcedural.robot /*testa um único teste*/
robot -d ./"nome pasta"/results "nome pasta"/nome do cenário.robot /*executa toda a suite*/

### Variáveis ###
Set Suite Variable
Set Test Variable
Set Variable
Set Global Variable

variáveis globais são fixas




