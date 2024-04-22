*** Variables ***
${verifyLogout}            True
${maxToSearch}             10
${browser}                 Chrome
${la}                      10x
${lt}                      3s
${openBrowser}             True
${IniciarValidacionClienteNuevo}    True
${contadorPestaniaCasos}    ${1}






${contadorMaximo}          24
${MAILSLURP_API_KEY}       f4f75c1c0b0ce394b97ea136b7fe48fe08a97e9fc72106e9bd408b02c32f9ee6
${mailSlurp}               93aed2fd-52cf-497a-a55b-3499d8044b21@mailslurp.com
${ImapHost}                imap.gmail.com
${ImapUser}                qa.salesforce.ventas@gmail.com
${ImapPassword}            aBCD123**
${SalesforceSender}        noreply@salesforce.com
${ImapTimeout}             600
${ImapSubject}             Sandbox: Verificar su identidad en Salesforce
${ImapDeleteEmail}         True
${estadoActivo}            ACTIVO
${complete}                complete
${waitComplete}            34
${timeoutDefecto}          30s
${reloadDefecto}           ${17}
${actualizarFicDef}        ${2}
${maxCaracteres}           103
${detenersinContrato}      False
${detenersinSubirCont}     True



${longitudFecha}           14
${extensionContrato}       .pdf
${eliminarContrato}        False
${estrategiaAUsar}         True
${estrategia}              eager

${ImagenID_TC}             
${lecturaDesdeArchivo}     False
${archivoGenerado}         False
${nombreArchivoICCID}      GT_Insumos.xlsx
${nombreArchivoIMEI}       GT_Insumos.xlsx
${hojaICCID}               ICCID
${hojaIMEI}                IMEI
${tipoICCID}               
${tipoIMEI}               
${maxReintentosICCID}      20
${validarLimiteExcedido}    %{validarLimiteExcedido=True}
${aplicaCancelarOrden}      %{aplicaCancelarOrden=True}
${removeScreenImages}       %{removeScreenImages=True}

##for SAveEvidences
${savebyTest}              True
${savePDF}                 True
${borrarHTML}              True
${release}                 1
${lenguajeSistema}         
${nombreDocEvidencia}      
${proyecto}                Prueba Store
${titulo}                  Evidencias de pruebas Cell Store - IHAR
${subTitulo}               Proyecto: ${proyecto} - Release ${release}
${rutaLog}                 ${LOG FILE}
${rutaReporte}             ${REPORT FILE}
${rutaArchivoBase}         Encabezado${/}encabezado.html
${formatoFecha}            _%y%m%d-%H%M%S
${textoEncabezado}         Evidencia de Pruebas
${pathLogo}                Resource${/}Logo${/}Logo.png
${autor}                   IHAR
${colorFooter}             ui-messagesred

###Encabezado

${tituloPDF}               <center><H1><B><font color\="black">${titulo}</font><B></H1></center>
${subtituloPDF}            <center><H2><B><font color\="black">${subTitulo}</font><B></H2></center>
${descripcionPDF}          <section><p>País: {pa}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;Hoja (Excel): {ho}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;Fecha: {fe}</p></section>   
${textoEncabezadoPDF}      ${tituloPDF}
...                        ${subtituloPDF}
...                        <p>&nbsp;</p>
...                        <p>&nbsp;</p>
...                        ${descripcionPDF}
...                        <p>&nbsp;</p>
...                        <p>&nbsp;</p>
...                        <p>&nbsp;</p>
### Fin Encabezado

#Resumen
${resumenPDF}              <center><H3><B><font color\="black">Resumen</font><B></H3></center>
...                        ${bodyResumenPDF}
${tablaResumenPDF}         <center><table width\="70%"> <thead> <tr> <th width\="10%">#</th> <th width\="30%">Test</th> <th width\="30%">Tiempo</th> <th width\="30%">Estatus</th> </tr> </thead> <tbody>
${tdTablaResumenPDF}       <tr><td align\="center">{no}</td> <td align\="center">{id}</td> <td align\="center">{ti}</td> <td align\="center"><font color\="{col}">{st}</font></td></tr>
${tablaResumenBodyPDF}     
${tablaResumenEndPDF}      </tbody> </table></center>
${bodyResumenPDF}          ${tablaResumenPDF} {br} ${tablaResumenEndPDF}
#Fin de Resumen

##PrimeraPagina
${presentacionEvidPDF}     ${textoEncabezadoPDF}
...                        ${resumenPDF}
##Fin Primera Pagina
@{bodyHTML2}               
${resultBody}              <h4 align\="left"><font color\="black"><U>Resultado</U></font></h4>
...                        <section>
...                           <font color\="black">
...                             <p>Documentación: {doc}</p>
...                             <p>Hora: {tim}</p>
...                             <p><B>Estado: <font color\="{col}">{res}</font></B></p>
...                             <p>Mensaje final: {mes}</p>
...                             <p>&nbsp;</p>
...                           </font>
...                        </section>
${colorFail}               red
${colorPass}               \#00E800    #28B828
${tmpFunct}                0
##for SAveEvidences