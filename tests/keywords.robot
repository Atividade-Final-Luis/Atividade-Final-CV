*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       http://localhost:5000
${BROWSER}   chrome
${EXECUTABLE_PATH}    /usr/bin/chromium-browser

*** Keywords ***
Abrir Página de Login
    Open Browser    ${URL}    chrome
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
    Element Text Should Be    id=result    Login bem-sucedido!
    Close Browser

Verificar Mensagem De Erro
    Element Text Should Be    id=result    Credenciais inválidas.
    Close Browser
