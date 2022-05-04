<%-- 
    Document   : Metodo.javax
    Created on : 7 oct. 2021, 09:50:45
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <script>
            $(function(){
                //alert("hola");
                $("#boton-enviar").on("click",enviarDatosAjax);
                $("#calcular").on("click",calculoPromedio);
            });
            
            function enviarDatosAjax(){
                $.ajax({
                        url:"EstudianteServlet",
                        type: 'POST',
                        data:$("#frmx").serialize(),
                        success:function (respuesta){
                            $("#tabla-datos").html(respuesta);
                        }
                    });//fin de metodo $.ajax()
            }
            
            function calculoPromedio(){
                var n1=parseInt($("#txtn1").val());
                var n2=parseInt($("#txtn2").val());
                var prom=(n1+n2)/2;
                $("#promedio").val(prom);
            }
            
        </script>
    </head>
    <body>
        <h1>Registro de datos</h1>
        <form name="frmx" id="frmx">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="txtnombre" id="txtnombre"></td>
                </tr>
                <tr>
                    <td>Pais</td>
                    <td>
                        <select id="listpais" name="listapais" >
                            <option>Peru</option>
                            <option>Argentina</option>
                            <option>Bolivia</option>
                            <option>Colombia</option>
                            <option>España</option>
                            <option>Alemania</option>
                            <option>Mexico</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Curso</td>
                    <td>
                        <select multiple="" name="listcurso">
                            <option>Algebra</option>
                            <option>Comunicaciones</option>
                            <option>Matematica Finaciera</option>
                            <option>Gestion Empresarial</option>
                            <option>Visual Basic</option>
                            <option>Lenguaje C#</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Nota1</td>
                    <td><input type="text" name="txtn1" id="txtn1"></td>
                </tr>
                <tr>
                    <td>Nota2</td>
                    <td><input type="text" name="txtn2" id="txtn2"></td>
                </tr>
                <tr>
                    <td>Promedio</td>
                    <td>
                        <input type="text"  readonly="true" name="txtpromedio" id="promedio">
                        <input type="button" value="Calcular" id="calcular">
                    </td>
                </tr>
                <tr>
                    <td>Sexo</td>
                    <td>
                        <input type="radio" name="rdsexo"   value="Femenino">Femenino
                        <input type="radio" name="rdsexo"  value="Masculino">Masculino
                    </td>
                </tr>
                <tr>
                    <td>Especalidad</td>
                    <td>
                        <select name="listespecialiad">
                            <option>Literatura</option>
                            <option>Educacion</option>
                            <option>Ingenieria Mecanica</option>
                            <option>Ingenieria de Sistemas</option>
                            <option>Administracion</option>
                            <option>Enfermeria</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td> <input type="button" value="Enviar" id="boton-enviar"></td>
                    <td>   

                    </td>
                </tr>

            </table>
        </form>
        <table id="tabla-datos" class="table">
            
        </table>
    </body>
</html>
