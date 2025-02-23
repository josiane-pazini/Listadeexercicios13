*** Settings ***
Library    SeleniumLibrary    
Library    DateTime

Resource    index_page.robot   
Resource    reserve_page.robot
Resource    purchase_page.robot
Resource    confirmation_page.robot

*** Variables ***
${timeout}    10000ms
${url}        https://www.blazedemo.com
${browser}    Chrome
${date} 
${link_travel}    xpath=//a[@class="brand" and text()="Travel The World"]   

*** Keywords ***

Abrir navegador
    Register Keyword To Run On Failure    Tirar Screenchot
    Obter Data e hora
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5000ms
    Wait Until Element Is Visible    css=div.jumbotron h1    ${timeout}

Fechar navegador
    Sleep    500ms
    Close Browser

Retornar para pagina inicial
    Click Element    ${link_travel}

Obter Data e hora
    ${date}=    Get Current Date        #ler a data e hora do sistema operacional
    ${date}=    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S    # %Y = ano, %m = mes, %d = dia, %H = hora, %M = minuto, %S = segundo
    ${date}    Set Suite Variable    ${date} 

Tirar Screenshot
    [Arguments]     ${screenshot_name}
    Capture Page Screenshot    screenshots/lista13/${TEST_NAME}/${date}/${screenshot_name}.jpg
    





