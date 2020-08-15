*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

Cenario: Buscar por Robot Framework no Google e entrar na pagina
    [Documentation]  Cenario para uma busca sobre Robot Framework
    ...              no Google
    [Tags]  busca
    Abrir o Chrome na pagina <http://www.google.com.br>
    Digite "Robot Framework" no campo de busca
    Pressione ENTER no campo de busca
    Pressione ENTER no campo de busca
    Verifique se a busca retornou o resultado esperado
    Clique no primeiro link
    Verifique se a pagina mostrada e a correta
    Fechar o browser


*** Keywords ***

Abrir o ${browser} na pagina <${url}>
    Open Browser  ${url}  ${browser}

Digite "${palavra busca}" no campo de busca
    Set Test Variable  ${palavra busca}
    Input text      name = q  ${palavra busca}

Pressione ${tecla} no campo de busca
    Press Keys      name = q  ${tecla}

Verifique se a busca retornou o resultado esperado
    ${titulo} =  Get title
    Should Contain  ${titulo}  ${palavra busca}

Clique no primeiro link
    ${texto} =  Get text  css = #rso > div:nth-child(1) > div > div.r > a > h3
    Click link  ${texto}

Verifique se a pagina mostrada e a correta
    ${titulo}                   Get title
    Should Contain              ${titulo}       ${palavra busca}
    Element text should be      css = h1        ROBOT FRAME WORK/

Fechar o browser
    Close browser
