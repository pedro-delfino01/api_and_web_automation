*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Variables           ../../../src/resources/web_variables.yaml
Variables           ../../../src/pages/element page/element_page_locators.yaml

*** Keywords ***
Validar Página - Element
    Wait Until Element Is Visible    locator=${header}

Clicar em Web Tables
    Wait Until Element Is Visible    locator=${web_tables_locator}
    Click Element    locator=${web_tables_locator}

Validar Tela Web Tables
    Wait Until Element Is Visible    locator=${web_tables_header_locator}
    

Clicar em Adicionar Funcionário
    Wait Until Element Is Visible    locator=${add_data_locator}
    Click Element    locator=${add_data_locator}

Validar Exibição da Tela Registration Form
    Wait Until Element Is Visible    locator=${registration_form_window_locator}

Inserir Primeiro Nome - Web Tables
    [Arguments]    ${first_name}
    Wait Until Element Is Visible    locator=${input_first_name_locator}
    Input Text    locator=${input_first_name_locator}    text=${first_name}

Inserir Último Nome - Web Tables
    [Arguments]    ${last_name}
    Wait Until Element Is Visible    locator=${input_last_name_locator}
    Input Text    locator=${input_last_name_locator}    text=${last_name}

Inserir E-mail - Web Tables
    [Arguments]    ${email}
    Wait Until Element Is Visible    locator=${input_email_locator}
    Input Text    locator=${input_email_locator}    text=${email}
    Should Match Regexp    string=${email}    pattern=^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$

Inserir Idade - Web Tables
    [Arguments]    ${age}
    Wait Until Element Is Visible    locator=${input_age_locator}
    Input Text    locator=${input_age_locator}    text=${age}
    
Inserir Salario - Web Tables
    [Arguments]    ${salary}
    Wait Until Element Is Visible    locator=${input_salary_locator}
    Input Text    locator=${input_salary_locator}    text=${salary}
    
Inserir Departamento - Web Tables
    [Arguments]    ${department}
    Wait Until Element Is Visible    locator=${input_department_locator}
    Input Text    locator=${input_department_locator}    text=${department}

Enviar Dados do Funcionário
    Wait Until Element Is Visible    locator=${submit_locator}
    Click Element    locator=${submit_locator}


