*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       http://localhost:5000
${BROWSER}   chrome

*** Keywords ***
Abrir Página de Login
    Open Browser    ${URL}    ${BROWSER}
    ...    options=add_argument("--no-sandbox")
    ...    options=add_argument("--disable-dev-shm-usage")
    ...    options=add_argument("--headless")
    Maximize Browser Window

Inserir Usuário E Senha Corretos
    Input Text    id=username    admin
    Input Text    id=password    123456
    Click Button    Entrar

Inserir Usuário E Senha Incorretos
    Input Text    id=username    user
    Input Text    id=password    errado
    Click Button    Entrar

Verificar Mensagem De Sucesso
    Wait Until Page Contains    Bem-vindo à Dashboard!    timeout=5s
    Close Browser

Verificar Mensagem De Erro
    Element Text Should Be    id=result    Credenciais inválidas.
    Close Browser
