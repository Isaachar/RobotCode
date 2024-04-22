#robot -i CU-01 -d results -T -v maxCaracteres:76 -v pais:Nicaragua -v openBrowser:True -v hoja:Hoja1  -v archivoVariables:DatosPrueba.xlsx .\Tests\Regresivo.robot

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resource/PageObject/Keywords/Common.robot
Resource  ../Resource/PageObject/Keywords/Keywords.robot
Library    ../Biblioteca/Control_de_Variables/ControldeVariablesLibrary.py    archivoVariables=${archivoVariables}    pais=${pais}    hoja=${hoja}  
Resource    ../Resource/PageObject/Variable/VGeneral.robot

*** Variables ***
${archivoVariables}    %{archivoVariables=DatosdePrueba.xlsx}
${pais}    %{pais=Nicaragua}
${hoja}
${ValidaNotificacion}    %{ValidaNotificacion=False}
${url}    https://opencart.abstracta.us/index.php?route=account/login
${browser}    Chrome    

*** Test Cases ***
Login
    [Documentation]    Test de prueba login 
    [Tags]    CU-01
    Abrir Navegador    ${url}    ${browser}
    Login 
    Sleep    5s
    #Close Browser

Agregar pc
    [Documentation]    Test de prueba agregar pc 
    [Tags]    CU-02
    Abrir Navegador    ${url}    ${browser}
    Login 
    Agregar pc 
    checkOut formulario
    Delivey formulario
    Payment formulario
    confirmar orden 
    Sleep    5s
    #Close Browser

Buscar items    
    [Documentation]    Test de prueba para buscar items 
    [Tags]    CU-03
    Abrir Navegador    ${url}    ${browser}
    Login 
    Buscar Item
