<%-- 
    Document   : DatosUsuario
    Created on : 14/06/2018, 19:50:52
    Author     : migue
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
<%@page import="Clases.clsUsuario"%>
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
        <title>Datos de Usuario</title>
        <link rel="icon" href="Imagenes/letterD.png">
    </head>
</head>
<style>
    body {text-align:center; padding:20px}
    input {
        min-width:200px!important;
        max-width:99.99%!important;
        transition: width 0.25s;
        text-align:center;
    }
</style>
<%
    String nickname = request.getParameter("nickn");
    clsUsuario cs = new clsUsuario();
    List<String> vec = cs.ConsultarUsuario(nickname);
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
<body background="Imagenes/wall3.jpg" style="background-repeat: round" onload="myFunction()">

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
    <div class="row">
        <div class="col-sm-3">
            <br><br>      <br><br>      <br><br><br>
            <img src="https://es.seaicons.com/wp-content/uploads/2015/08/blue-user-icon.png" width="350"/>
        </div>
        <div class="col-sm-6">
            <h1>Actualizar Mi Información de Usuario</h1>
            <br>
            <form action="ProcesarActualizarDatosEmpresa.jsp" method="post">
                <table>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Cédula Identidad</div>
                            <input type="text" class="form-control " id="ci" placeholder="CI #1234567890" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(0).trim());
                                }
                                   %>" name="cedula" readonly aria-describedby="basic-addon2"  onkeypress='return validaNumericos(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2"><center>  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">NickName</div>
                            <input type="text" class="form-control" id="ci" placeholder="ej: Jose123" name="nickn" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(1).trim());
                                }
                                   %>"aria-describedby="basic-addon2"onClick="this.select();"required maxlength="20">
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Password</div>
                            <input type="password" class="form-control" id="passw" placeholder="ej: Mispar159357" name="passw" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(2).trim());
                                }
                                   %>"onClick="this.select();"required>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Verficar Password</div>
                            <input type="password" class="form-control" id="passwv" name="passwv" placeholder="Repetir Password" required>
                        </div> </center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Nombres</div>
                            <input type="text" class="form-control" id="ci" placeholder="ej: Juan Jose" name="name" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(3).trim());
                                }
                                   %>"onClick="this.select();"required onkeypress='return validaLetras(event)'>
                        </div> </center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2"> <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Apellido</div>
                            <input type="text" class="form-control" id="ci" placeholder="ej: Catillo Perez" name="lname" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(4).trim());
                                }
                                   %>"onClick="this.select();"required  onkeypress='return validaLetras(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">em@il</div>
                            <input type="email" class="form-control" id="ci" placeholder="ej: josejj@gmail.com" name="email" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(5).trim());
                                }
                                   %>"onClick="this.select();"required>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Teléfono Fijo</div>
                            <input type="text" class="form-control" id="ci" placeholder="ej 022465873" name="telf" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(6).trim());
                                }
                                   %>"onClick="this.select();"required onkeypress='return validaNumericos(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2"> <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Teléfono Celular </div>
                            <input type="text" class="form-control" id="ci" placeholder="ej: 0912345678"name="celu" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(7).trim());
                                }
                                   %>"onClick="this.select();"required onkeypress='return validaNumericos(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Dirección Domiciliaría</div>
                            <input type="text" class="form-control" id="direc" placeholder="ej: Ciudadela Ibarra" name="direc" value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(8).trim());
                                }
                                   %>"onClick="this.select();"required maxlength="30">
                        </div>  </center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>

                </table>

                <button type="submit"  class="btn btn-primary btn-lg"> Guardar Cambios  </button>
                <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                <img src="Imagenes/Users.png" alt=""/>
            </form>
        </div>   
        <div class="col-sm-3">
           
        </div>
    </div>
</center>
</body>
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
    var password = document.getElementById("passw")
            , confirm_password = document.getElementById("passwv");

    function validatePassword() {
        if (password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Contraseñas Distintas");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
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
    resizable(document.getElementById('direc'), 7);
</script>
</html>
