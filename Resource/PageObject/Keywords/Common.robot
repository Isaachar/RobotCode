*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py
Library    String

*** Variable ***
${valor}    ${NULL}
*** Keywords ***
Abrir Navegador
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Maximize Browser Window
    # Establece el zoom del 75%
    Execute JavaScript    document.body.style.zoom = '110%'
    Wait Until Element Is Visible  ${InputName}  timeout=10s

Esperar elemento
    [Arguments]    ${locator}
    ${element_visible}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}    timeout=30s
    Run Keyword If    '${element_visible}' == 'True'    Set Global Variable    ${valor}    ${True}
    ...    ELSE    Set Global Variable    ${valor}    ${False}
    [Return]    ${valor}

Click Elemento
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}    timeout=10s
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Enviar Dato
    [Arguments]    ${locator}    ${Data} 
    Wait Until Element Is Visible  ${locator}  timeout=10s
    Input Text    ${locator}    ${Data}

Scroll al elemento
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=30
    Scroll Element Into View    ${locator}

Click Script
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    
    Execute JavaScript    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()

Scroll Espacio
    Execute JavaScript    window.scrollBy(0, 300)

CapturaImagenConComentarios
    [Arguments]     ${Nombre1}    ${Nombre2}     ${Prefijo}
    ${ret} =    Generate Random String
    ${filename} =    Capture Page Screenshot
    Logging Info And Evidence In Report    ${Nombre1}    ${Nombre2}    ${filename}

CapturaImagenSinComentarios    
    ${ret} =    Generate Random String
    ${filename} =    Capture Page Screenshot
    Logging Evidence In Report    ${filename}   


