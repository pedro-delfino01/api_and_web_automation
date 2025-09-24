*** Settings ***
Library    SeleniumLibrary
Variables           ../../../src/resources/web_variables.yaml
Variables           ../../../src/pages/main page/main_page_locators.yaml

*** Keywords ***
Abrir Navegador
    Open Browser    url=${web_base_url}    browser=chrome
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${header}

Selecionar Opção - Forms
    Wait Until Element Is Visible    locator=${form_option}
    Click Element    locator=${form_option}
    Wait Until Element Is Visible    locator=${header}

Selecionar Opção - Alert, Frame & Windows
    Wait Until Element Is Visible    locator=${alert_option}
    Click Element    locator=${alert_option}
    Wait Until Element Is Visible    locator=${header}

Selecionar Opção - Elements
    Wait Until Element Is Visible    locator=${element_option}
    Click Element    locator=${element_option}
    Wait Until Element Is Visible    locator=${header}

Selecionar Opção - Widgets
    Wait Until Element Is Visible    locator=${element_option}
    Click Element    locator=${element_option}
    Wait Until Element Is Visible    locator=${header}

Fechar Navegador
    Capture Page Screenshot
    Close Browser