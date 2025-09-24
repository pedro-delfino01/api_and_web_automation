*** Settings ***
Documentation       Testes de API - DEMOQA

Library             RequestsLibrary
Library             String
Variables           ../../../src/resources/api_variables.yaml


*** Test Cases ***
Autorizar Acesso


Criar Usuário
    [Documentation]    Criação de um usuário
    ${json_content}    Create Dictionary    userName=${username}    password=${password}
    ${response}     POST        ${api_base_url}/Account/v1/Authorized    data=${json_content}       expected_status=200
    Log    ${response.status_code}
    Status Should Be    200    ${response.status_code}