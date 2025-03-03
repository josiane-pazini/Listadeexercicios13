*** Settings ***

Resource    ../../pages/base_page.robot
Test Template    Comprar passagem

*** Test Cases ***
TC001    Paris    Buenos Aires   
TC002    Paris    Rome
TC003    Paris    London 

*** Keywords ***

Comprar passagem
    [Arguments]    ${cidade_partida}    ${cidade_destino}
    Tirar Screenshot    1-Home
    Selecionar cidade de partida    ${cidade_partida}
    Selecionar cidade de destino    ${cidade_destino}
    Tirar Screenshot    2- Destino escolhido
    Clicar no botão Find Flights
    Element Text Should Be    ${titulo_secao_h3}    Flights from ${cidade_partida} to ${cidade_destino}:
    Tirar Screenshot    3- Voos Disponiveis
    Selecionar primeiro voo    
    Tirar Screenshot    4- Voo Selecionado
    Element Text Should Be    ${titulo_secao_h2}    Your flight from TLV to SFO has been reserved.
    Preencher Name    Jose dos Santos
    Preencher Address    Rua Teste 
    Preencher City    Sao Paulo
    Preencher State    SP 
    Preencher Zip Code    292929-000
    Preencher Card Type    Visa
    Preencher Credit Card Number    1111111111111111
    Preencher Name On Card    Jose dos Santos
    Tirar Screenshot    5- Dados da compra 
    Clicar no botão Purchase flight
    Element Text Should Be    ${titulo_secao_h1}    Thank you for your purchase today!
    Tirar Screenshot    6- Confirmação de compra
    Retornar para pagina inicial




