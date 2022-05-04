<%-- 
    Document   : MetodoPost
    Created on : 6 oct. 2021, 16:23:28
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            $(function(){
                //alert("hola");
                $("#boton-enviar").on("click",function(){
                    //alert("Saludos");
                    //capturar valor de los cuadros de texto
                    var nom=$("#txtnombre").val;
                    var ed=$("#txtedad").val;
                    //enviar nombre y edad hacia el servidor
                    $.post("ServletAlumno",{nombre:nom,edad:ed},function(respuesta){
                        $("#datos-respuesta").html(respuesta);
                    });
                });
            });
        </script>
    </head>
    <body>
        <h1>Datos de Alumno</h1>
        <form id="frmx">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" id="txtnombre" name="txtnombre"></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="text" id="txtedad" name="txtedad"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="button" id="boton-enviar">Enviar</button></td>
                </tr>
            </table>
        </form>
        <div id="datos-respuesta"></div>
    </body>
</html>
