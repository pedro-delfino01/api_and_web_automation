*** Settings ***
Documentation       Testes Web - DEMOQA

Library             SeleniumLibrary


Resource    ../../pages/main page/main_page.robot
Resource    ../../pages/form page/form_page.robot

Variables    ../../../src/resources/data/personal_data.yaml

*** Test Cases ***
Formulário
    [Documentation]    Execução de um cadastro de um formulário
    Abrir Navegador
    Selecionar Opção - Forms
    Clicar em Practice Form
    Validar Exibição do Form
    Inserir Primeiro Nome    first_name=Pedro
    Inserir Último Nome    last_name=Delfino
    Inserir E-mail    email=pedro.delfino.dev@outlook.com
    Marcar Gênero    gender=Male
    Inserir Telefone
    Inserir Data de Nascimento
    Inserir Assunto    subject=Desafio
    Marcar Checkbox    lista_hobbies=${lista_hobbies}
    Importar Arquivo
    Inserir Endereço Atual    address=Rua dos Mortos
    Inserir Cidade e Estado    cidade=NCR    estado=Noida
    Enviar Formulário
    [Teardown]    Fechar Navegador

Alerta
    [Documentation]    Execução de um cadastro de um alerta
    Abrir Navegador
    Selecionar Opção - Alert, Frame & Windows

    [Teardown]    Fechar Navegador

Elementos
    [Documentation]    Execução de um cadastro de um elemento
    Abrir Navegador
    Selecionar Opção - Elements

    [Teardown]    Fechar Navegador
    
    