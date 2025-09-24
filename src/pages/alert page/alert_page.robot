*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Variables           ../../../src/resources/web_variables.yaml
Variables           ../../../src/pages/alert page/alert_page_locators.yaml

*** Keywords ***
Validar Página - Alert
    Wait Until Element Is Visible    locator=${header}

Clicar em Browser Windows
    Wait Until Element Is Visible    locator=${browser_windows_locator}
    Click Element    locator=${browser_windows_locator}

Clicar em New Tab
    Wait Until Element Is Visible    locator=${new_tab_locator}
    Click Element    locator=${new_tab_locator}
Clicar em New Window
    Wait Until Element Is Visible    locator=${new_window_locator}
    Click Element    locator=${new_window_locator}
Clicar em New Window Message
    Wait Until Element Is Visible    locator=${new_message_window_locator}
    Click Element    locator=${new_message_window_locator}

Validar Exibição da Tela
    Wait Until Element Is Visible    locator=${browser_header_locator}

Validar e Trocar de Aba
    ${windows}    Get Window Identifiers
    Log    ${windows}
    Switch Window    NEW
    

Validar Mensagem na Nova Aba
    ${conteudo}    Get Text    locator=//h1[@id="sampleHeading"]
    Should Be Equal As Strings    first=${conteudo}    second=This is a sample page