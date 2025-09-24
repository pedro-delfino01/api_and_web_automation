*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    OperatingSystem
Variables           ../../../src/resources/web_variables.yaml
Variables           ../../../src/pages/form page/form_page_locators.yaml

*** Keywords ***
Validar Página - Forms
    Wait Until Element Is Visible    locator=${header}

Clicar em Practice Form
    Wait Until Element Is Visible    locator=${form_practice_locator}
    Click Element    locator=${form_practice_locator}

Validar Exibição do Form
    Wait Until Element Is Visible    locator=${form_header_locator}
    Wait Until Element Is Visible    locator=${form_content_locator}

Inserir Primeiro Nome
    [Arguments]    ${first_name}
    Wait Until Element Is Visible    locator=${input_first_name_locator}
    Input Text    locator=${input_first_name_locator}    text=${first_name}

Inserir Último Nome
    [Arguments]    ${last_name}
    Wait Until Element Is Visible    locator=${input_last_name_locator}
    Input Text    locator=${input_last_name_locator}    text=${last_name}

Inserir E-mail
    [Arguments]    ${email}
    Wait Until Element Is Visible    locator=${input_email_locator}
    Input Text    locator=${input_email_locator}    text=${email}
    Should Match Regexp    string=${email}    pattern=^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$

Marcar Gênero
    [Arguments]    ${gender}
    Should Be String    ${gender}
    ${web_elements_gender}    Get WebElements    locator=${gender_class_locators}
    FOR    ${web_element}    IN    @{web_elements_gender}
        Log    ${web_element}
        ${gender_type}    Get Text    locator=${web_element}
        IF    $gender == $gender_type
            Click Element    locator=${web_element}
            BREAK
        END
    END


Inserir Telefone
    ${phone}    Generate Random String    length=10    chars=[NUMBERS]
    Wait Until Element Is Visible    locator=${input_phone_locator}
    Scroll Element Into View    locator=${input_phone_locator}
    Input Text    locator=${input_phone_locator}    text=${phone}


Inserir Data de Nascimento
    ${data}    Get Current Date    result_format=%d %b %Y
    ${data}    Convert To String    item=${data}
    Wait Until Element Is Visible    locator=${input_date_birth_locator}
    Execute Javascript    document.getElementById("dateOfBirthInput").setAttribute("value","${data}")
    ${data_atualizada}    Get Text    locator=${input_date_birth_locator}
    Should Be Equal As Strings    first=${data}    second=${data_atualizada}


Inserir Assunto
    [Arguments]    ${subject}
    Wait Until Element Is Visible    locator=${input_subject_locator}
    Scroll Element Into View    locator=${input_subject_locator}
    Input Text    locator=${input_subject_locator}    text=${subject}

Marcar Checkbox
    [Arguments]    @{lista_hobbies}
    Wait Until Element Is Visible    locator=${hobbies_list_locators}
    Scroll Element Into View    locator=${hobbies_list_locators}
    ${web_elements}    Get WebElements    locator=${hobbies_list_locators}
    FOR    ${element}    IN    @{web_elements}
        ${hobby}    Get Text    locator=${element}
        IF    $hobby in $lista_hobbies
            Select Checkbox    locator=${element}
        END
    END

Importar Arquivo
    Wait Until Element Is Visible    locator=${input_file_locator}
    Scroll Element Into View    locator=${input_file_locator}
    ${normalized_file_path}    Normalize Path    path=${file_path}
    Choose File    locator=${input_file_locator}    file_path=${normalized_file_path}
    
Inserir Endereço Atual
    [Arguments]    ${address}
    Wait Until Element Is Visible    locator=${input_address_locator}
    Scroll Element Into View    locator=${input_address_locator}
    Input Text    locator=${input_address_locator}    text=${address}

Inserir Cidade e Estado
    [Arguments]    ${cidade}    ${estado}
    Wait Until Element Is Visible    locator=${input_state_locator}
    Click Element    locator=${input_state_locator}
    Sleep    2s
    # Click Element    xpath=//div[contains(text()="${state}")]

    Wait Until Element Is Enabled    locator=${input_city_locator}
    Select From List By Value    ${input_city_locator}    ${cidade}


Enviar Formulário
    Wait Until Element Is Visible    locator=${submit_form_locator}
    Click Button    locator=${submit_form_locator}

# Inserir Dados do Form
#     [Arguments]    ${name}    ${email}
#     Input Text    id:name    ${name}
#     Input Text    id:email   ${email}

# Concluir Form
#     Click Button    id:submit
