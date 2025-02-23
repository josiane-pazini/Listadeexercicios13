*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${cidade_partida}            name=fromPort
${cidade_destino}            name=toPort
${btn_find_flights}          css=.btn-primary            

*** Keywords ***

Selecionar cidade de partida
    [Arguments]    ${origem}
    Wait Until Element Is Visible    ${cidade_partida}
    Select From List By Label    ${cidade_partida}    ${origem}

Selecionar cidade de destino
    [Arguments]    ${destino}
    Wait Until Element Is Visible    ${cidade_destino}
    Select From List By Label    ${cidade_destino}    ${destino}

Clicar no botão Find Flights
    Click Button    ${btn_find_flights}