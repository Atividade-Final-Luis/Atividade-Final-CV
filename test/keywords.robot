*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///absolute/caminho/para/LoginApp/app/index.html
${BROWSER}    chrome

*** Keywords ***
Abrir Página de Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Inserir Usuário E Senha Corretos
    Input Text    id=username    admin
    Input Text    id=password    123456
    Click Button    Entrar

Inserir Usuário E Senha Incorretos
    Input Text    id=username    usuario
    Input Text    id=password    senhaerrada
    Click Button    Entrar

Verificar Mensagem De Sucesso
    Element Text Should Be    id=result    Login bem-sucedido!
    Close Browser

Verificar Mensagem De Erro
    Element Text Should Be    id=result    Credenciais inválidas.
    Close Browser
