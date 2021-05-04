*** Settings ***
Documentation        Exemplos de escopo de variáveis: globais, suite, teste (teste case) e local (keyword)
Library              String

*** Variable ***
${GLOBAL_INSTANCIADA}        #Minha variável global foi instanciada para suite

*** Test Case ***
Caso de teste 01
    Uma Keyword qualquer 01
    Uma Keyword qualquer 02

Caso de teste 02
    Uma Keyword qualquer 03
    Uma Keyword qualquer 04

Caso de teste 03
    Uma Keyword qualquer 05

*** Keywords ***
Uma Keyword qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}        Generate Random String

    #Variável "global" pode ser usada em todas as suites em execução
    Set Global Variable        ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}        #variável da suite

    #a variável "suite" pode ser usada somente nos testes da suite em execução
    Set Suite Variable        ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}        #variável da suite

    #a variavel "test" pode ser usada somente nas KWs do teste em execução
    Set Test Variable        ${TESTE_01}        #variavel de teste 01
    Log        ${TESTE_01}

    #a variavel "local" pode ser usada somente na KW em execução
    ${LOCAL}        Set Variable        variável local da KW 01

Uma Keyword qualquer 02
    ${LOCAL}        Set Variable        variavel local da KW 02
    Log        ${LOCAL}
    Log        ${GLOBAL_INSTANCIADA}/${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}/${SUITE_CRIADA_EM_TEMPO_EXECUCAO}/${LOCAL}
    #a KW abaixo vai funcionar para Teste 01 e falhar para Teste 02
    Log        ${TESTE_01}

Uma Keyword qualquer 03
    ${LOCAL}        Set Variable        variável local da KW 03
    Log        ${LOCAL}
    Log        ${GLOBAL_INSTANCIADA}/${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}/${SUITE_CRIADA_EM_TEMPO_EXECUCAO}/${LOCAL}