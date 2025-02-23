*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_secao_h3}    css=h3
${primeiro_voo}    xpath=//tbody/tr[1]//input[@value='Choose This Flight']
#${voo_mais_barato}    xpath=//tbody/tr[last()]//input[@value='Choose This Flight']

*** Keywords ***
Selecionar primeiro voo
    Wait Until Element Is Visible    ${primeiro_voo}
    Click Button    ${primeiro_voo}
    
#Selecionar voo mais barato 
 #   Wait Until Element Is Visible    ${voo_mais_barato}
 #   Click Button    ${voo_mais_barato}


        



