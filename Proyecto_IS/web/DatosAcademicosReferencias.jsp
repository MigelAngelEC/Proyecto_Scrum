<%-- 
    Document   : DatosAcademicosUsuario
    Created on : 15/06/2018, 19:22:06
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Referencias del Usuario</title>
        <link rel="icon" href="Imagenes/letterD.png">
    </head>    <style>
        body {text-align:center; padding:20px}
        input {
            min-width:200px!important;
            max-width:99.99%!important;
            transition: width 0.25s;
            text-align:center;
        }
    </style>
    <% String nickname = request.getParameter("nickn");
    %>
    <script>
        function myFunction() {
        <%
            if (nickname == null) {
        %>
            alert("Sesión no Iniciada , Se lo Redirigira al Incio");
            window.setTimeout('window.location="Inicio.html"; ', 200);
        <% }
        %>
        }
    </script>
    <body background="Imagenes/wall3.jpg" style="background-repeat: space" onload="myFunction()">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Inicio.html">Desempleados.com.ec</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Inicio.html">Inicio <span class="sr-only">(current)</span></a></li>
                        <li class=""><a href="Publicidad.jsp">Empresas Asociadas <span class="sr-only">(current)</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right" >
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(nickname);%></i></a></p>
                        <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                        <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    <center>
        <h1>Registrar Mis Referencias Personales</h1>
        <form action="ProcesarDatosAcademicosReferencias.jsp" method="post">
            <div class="col-sm-3">  
                <img src="Imagenes/Foto7.png" alt="" width="350"/>
            </div>

            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Referencias Personales</h3>
                    </div>
                    <div class="panel-body">
                        <table>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Nombre y Apellido</div>
                                    <input type="text" class="form-control" id="nameref" placeholder="Juan Torrez" name="nameref" onClick="this.select();" required=""onkeypress='return validaLetras(event)'  >
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Cargo</div>
                                    <input type="text" class="form-control" id="cargoref1" placeholder="Administrador de Datos" name="cargoref1" size="30px" onClick="this.select();" required="" onkeypress='return validaLetras(event)' maxlength="50">
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Teléfono</div>
                                    <input type="text" class="form-control" id="telfref1" placeholder="telf:022413568" name="telfref" size="28px" onClick="this.select();" required=""onkeypress='return validaNumericos(event)' maxlength="10"> 
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Parentesco</div>
                                    <input type="text" class="form-control" id="parentescoref1" placeholder="Primo" name="parentescoref" size="26px" onClick="this.select();" required=""onkeypress='return validaLetras(event)'maxlength="30">
                                </div></center>
                            </td></tr>
                        </table>
                    </div>
                </div> 
                <input type="text" name="nickne" value="<%out.println(nickname);%>" hidden="true" >
                <button type="submit"class="btn btn-primary btn-lg">Guardar </button>
                <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
            </div>
            <div class="col-sm-3">

            </div>
            <script>
                function validaNumericos(event) {
                    if (event.charCode >= 48 && event.charCode <= 57) {
                        return true;
                    }
                    return false;
                }
                function validaLetras(event) {
                    if (event.charCode >= 48 && event.charCode <= 57) {
                        return false;
                    }
                    return true;
                }
            </script>
            <script>
                function resizable(el, factor) {
                    var int = Number(factor) || 7.7;
                    function resize() {
                        el.style.width = ((el.value.length + 1) * int) + 'px'
                    }
                    var e = 'keyup,keypress,focus,blur,change'.split(',');
                    for (var i in e)
                        el.addEventListener(e[i], resize, false);
                    resize();
                }
                resizable(document.getElementById('cargoref1'), 7);
            </script>
        </form>
    </center>
</body>
</html>
