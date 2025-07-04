*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot

*** Test Cases ***
Login Com Sucesso
    Abrir Página de Login
    Inserir Usuário E Senha Corretos
    Verificar Mensagem De Sucesso

Login Com Falha
    Abrir Página de Login
    Inserir Usuário E Senha Incorretos
    Verificar Mensagem De Erro
