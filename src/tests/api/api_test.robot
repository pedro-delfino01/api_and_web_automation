*** Settings ***
Documentation       Testes de API - DEMOQA
Suite Setup    Create Session    DEMOQA    ${api_base_url}

Library             RequestsLibrary
Library             String
Library    Collections
Variables           ../../../src/resources/api_variables.yaml


*** Test Cases ***
Criar Usuário
    [Documentation]    Criação de um usuário
    ${json_content}    Create Dictionary    userName=${username}    password=${password}
    ${response}     POST On Session    DEMOQA      /Account/v1/User    json=${json_content}       expected_status=201
    Log    ${response}
    Status Should Be    201    ${response}

Gerar Token de Acesso
    [Documentation]    Geração de um token de acesso
    ${json_content}    Create Dictionary    userName=${username}    password=${password}
    ${response}     POST On Session    DEMOQA    /Account/v1/GenerateToken    json=${json_content}       expected_status=200
    Log    ${response}
    Status Should Be    200    ${response}

Confirmar se Usuário Criado Está Autorizado
    [Documentation]    Confirmar se o usuário criado é autorizado
    ${json_content}    Create Dictionary    userName=${username}    password=${password}
    ${response}     POST On Session    DEMOQA    /Account/v1/Authorized    json=${json_content}       expected_status=200
    Log    ${response}
    Status Should Be    200    ${response}

Listar Livros Disponíveis
    [Documentation]    Listar os livros disponíveis
    ${response}     GET On Session    DEMOQA    /BookStore/v1/Books       expected_status=200
    Status Should Be    200    ${response}
    Log    ${response.text}

Alugar Dois Livros
    [Documentation]    Alugar dois livros de sua escolha
    ${response}     GET On Session    DEMOQA    /BookStore/v1/Books       expected_status=200
    Status Should Be    200    ${response}
    Log    ${response.text}