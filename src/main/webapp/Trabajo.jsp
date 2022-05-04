<%-- 
    Document   : Trabajo
    Created on : 14 oct. 2021, 10:42:47
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica #1</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <script>
            $(function(){
                //alert("hola");
                $("#listopc").on("click",selecfiguras)
                //$("#boton-enviar").on("click",enviarDatosAjax);
                //$("#calcular").on("click",calculoArea);
            });
            function selecfiguras(){
                let cbxfigu = document.getElementById('listopc');
                let figur = cbxfigu.value;
                document.getElementById('txtfigura').innertext = '${figur}';
            }
            /*
            function enviarDatosAjax(){
                $.ajax({
                        url:"calculoServlet",
                        type: 'POST',
                        data:$("#frmx").serialize(),
                        success:function (respuesta){
                            $("#tabla-datos").html(respuesta);
                        }
                    });//fin de metodo $.ajax()
            }
            function calculoArea(){
                var n1=parseInt($("#txtn1").val());
                var n2=parseInt($("#txtn2").val());
                var prom=(n1+n2)/2;
                $("#promedio").val(prom);
            }
             */
        </script>
    </head>
    <body>
        <h1>Calculo de Areas</h1>
        <hr>
        <form name="frmx" id="frmx">
            <table>
                <tr>
                    <td>Figura</td>
                    <td>
                        <select id="listopc" name="listopc" >
                            <option disabled="">Seleccione</option>
                            <option>Cuadrado</option>
                            <option>Circulo</option>
                        </select>
                    </td>
                    <td>
                        <input type="button" value="Calcular" id="calcular">
                    </td>
                </tr>
                <tr>
                    <td>Radio :</td>
                    <td><input type="text"  readonly="true" name="txtpromedio" id="promedio"></td>
                </tr>
            </table>
        </form>
        <table id="figuraSeleccionada" class="table">
            <tr>
                <td><span id="txtfigura"></span>Resultado</td>
                <td><input type="text" name="txtvalor" id="txtvalor"></td>
            </tr>
        </table>
    </body>
</html>
