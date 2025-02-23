*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_secao_h2}                 css=h2
${txt_name}                     id=inputName
${txt_address}                  id=address
${txt_city}                     id=city
${txt_state}                    id=state
${txt_zip_code}                 id=zipCode
${select_card_type}             id=cardType
${txt_credit_card_number}       id=creditCardNumber  
${txt_name_card}                id=nameOnCard
${btn_purchase_flight}          css=.btn-primary      

*** Keywords ***

Preencher Name
    [Arguments]    ${name}
    Input Text    ${txt_name}    ${name}

Preencher Address
    [Arguments]    ${address}
    Input Text    ${txt_address}    ${address}

Preencher City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

Preencher State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Preencher Zip Code
    [Arguments]    ${zipcode}
    Input Text    ${txt_zip_code}    ${zipcode}

Preencher Card Type
    [Arguments]    ${card_type}
    Select From List By Label    ${select_card_type}    ${card_type}

Preencher Credit Card Number
    [Arguments]    ${credit_card_number}
    Input Text    ${txt_credit_card_number}    ${credit_card_number}

Preencher Name On Card
    [Arguments]    ${name_card}
    Input Text    ${txt_name_card}    ${name_card}

Clicar no botão Purchase flight
    Click Button    ${btn_purchase_flight}
