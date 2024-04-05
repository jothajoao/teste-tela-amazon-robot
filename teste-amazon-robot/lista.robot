*** Settings ***
Documentation   TESTE PARA GERAR EMAIL APARTIR DO NOME E SOBRENOME
Library     String

*** Variables ***
&{NOME_USUARIO}    nome=joao    sobrenome=jotha

*** Test Cases ***
Geração do email
    Gerar email

*** Keywords ***
Gerar email
    ${EMAIL}    criar email   ${NOME_USUARIO.nome}    ${NOME_USUARIO.sobrenome}
    Log To Console    ${EMAIL}

criar email
    [Arguments]    ${USUARIO_NOME}    ${USUARIO_SOBRENOME}
    ${COMPLEMENTO}     Generate Random String
    ${EMAIL_CRIADO}   Set Variable    ${USUARIO_NOME}${USUARIO_SOBRENOME}$@testerobot.com
    [Return]    ${EMAIL_CRIADO}
