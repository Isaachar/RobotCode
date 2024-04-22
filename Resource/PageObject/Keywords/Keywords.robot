*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Resource    Common.robot
 
*** Variables ***

*** Keywords ***
Login 
    CapturaImagenConComentarios    Paso     Se carga pantalla de login    pdf
    Input Text    ${InputName}    ${email}
    CapturaImagenConComentarios    Paso     Se Ingresa usuario    pdf
    Input Text    ${InputPassword}    ${password}
    CapturaImagenConComentarios    Paso     Se ingresa contraseña    pdf
    Click Script    ${ButtonIngresar}
    Click Elemento    ${BtnDesktop} 
    CapturaImagenConComentarios    Paso     click en Desktop    pdf 
    Click Elemento    ${btndroppc}  
    CapturaImagenConComentarios    Paso     click en Sub Menu PC    pdf
    Click Elemento    ${btnhome}  
    CapturaImagenConComentarios    Paso     click en Home    pdf


Agregar pc 
    Sleep    2s
    Click Elemento    ${btnaddcart}  
    CapturaImagenConComentarios    Paso     click en Item add cart    pdf
    Sleep    2s
    Click Elemento    ${btninfoiph}  
    CapturaImagenConComentarios    Paso     click en Item Info    pdf
    Sleep    2s
    Click Elemento    ${fotocarruselmain}
    CapturaImagenConComentarios    Paso     click en Imagen en carrusel    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselcerrar}
    CapturaImagenConComentarios    Paso     click en cerrar carrusel    pdf
    click elemento    ${btncart3}
    CapturaImagenConComentarios    Paso     click en add to cart    pdf
    click elemento    ${btnviewcart}
    CapturaImagenConComentarios    Paso     click en view cart    pdf
    click elemento    ${btncheackout}
    CapturaImagenConComentarios    Paso     click en Checkout    pdf


checkOut formulario
   sleep    2s
   click elemento     ${btnradionwadd}    
   CapturaImagenConComentarios    Paso     click en Pais    pdf
   Sleep    1s
   CapturaImagenConComentarios    Paso     Formulario de Check Out    pdf
   Input Text    ${inputname2}    ${name}
   CapturaImagenConComentarios    Paso     Ingreso de Nombre    pdf
   Input Text    ${inputlast}    ${lastname}
   CapturaImagenConComentarios    Paso     Ingreso de Apellido    pdf
   Input Text    ${inputcompany}    ${company}
   CapturaImagenConComentarios    Paso     Ingreso de Compañia    pdf
   Input Text    ${inputaddress1}    ${address}
   CapturaImagenConComentarios    Paso     Ingreso de direccion    pdf
   Input Text    ${inputcity}    ${city}
   CapturaImagenConComentarios    Paso     Ingreso de Ciudad    pdf
   Input Text    ${inputpostcode}    ${code}
   CapturaImagenConComentarios    Paso     click en Codido Postal    pdf
   click elemento     ${selectcountry}    
   CapturaImagenConComentarios    Paso     click en Pais    pdf
   click elemento     ${selectzone}    
   CapturaImagenConComentarios    Paso     click en zona    pdf
   click elemento     ${btnCheckout2}    
   CapturaImagenConComentarios    Paso     click en Btn CheckOut    pdf

Delivey formulario
   sleep    2s
   click elemento     ${btnDelivey}    
   CapturaImagenConComentarios    Paso     click en Btn Delivey    pdf
   sleep    1s   
   Input Text    ${inputtextareadelivey}    ${txtarea}
   CapturaImagenConComentarios    Paso     se llena informacion adicional en txtarea    pdf
   click elemento     ${btncontiDelivery}    
   CapturaImagenConComentarios    Paso     click en Btn continuar delivey    pdf

Payment formulario
   sleep    2s
   click elemento     ${inputTerm}    
   CapturaImagenConComentarios    Paso     click en acerptar terminos y conficiones    pdf
   click elemento     ${btnContiPay}    
   CapturaImagenConComentarios    Paso     click en Btn continuar delivey    pdf

confirmar orden 
   sleep    2s
   CapturaImagenConComentarios    Paso     Confirmar Orden    pdf
   click elemento     ${btnConfirOrder}    
   CapturaImagenConComentarios    Paso     click en Confirmar Orden    pdf
   click elemento     ${btnPlaceOrder}    
   CapturaImagenConComentarios    Paso     click en termianr orden    pdf


Buscar Item
   sleep    1s   
   Input Text    ${inputSearch}    ${item1}
   click elemento     ${btnsearch}    
   CapturaImagenConComentarios    Paso     Buscar item    pdf
   sleep    1s  
   click elemento     ${searhimg} 
   CapturaImagenConComentarios    Paso     Ver informacion de item    pdf
   Sleep    2s
   Click Elemento    ${fotocarruselmain}
   CapturaImagenConComentarios    Paso     click en Imagen en carrusel    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselright}
    CapturaImagenConComentarios    Paso     click en Carrusel derecha    pdf
    Click Elemento    ${btncarruselcerrar}
    CapturaImagenConComentarios    Paso     click en cerrar carrusel    pdf
    click elemento    ${btncart3}
    CapturaImagenConComentarios    Paso     click en add to cart    pdf  

             