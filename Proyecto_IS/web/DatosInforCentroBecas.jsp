<%-- 
    Document   : DatosUsuario
    Created on : 14/06/2018, 19:50:52
    Author     : migue
--%>

<%@page import="Clases.clsCentroBecas"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
<%@page import="Clases.clsUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Chatra {literal} -->
        <script>
            (function (d, w, c) {
                w.ChatraID = 'zP9v9br5gsMWXE9eR';
                var s = d.createElement('script');
                w[c] = w[c] || function () {
                    (w[c].q = w[c].q || []).push(arguments);
                };
                s.async = true;
                s.src = 'https://call.chatra.io/chatra.js';
                if (d.head)
                    d.head.appendChild(s);
            })(document, window, 'Chatra');
        </script>
        <!-- /Chatra {/literal} -->
        <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Centro de Becas</title>
        <link rel="icon" href="Imagenes/letterD.png">
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
        String emailcb = request.getParameter("emailcb");
        clsCentroBecas cb = new clsCentroBecas();
        List<String> vec = cb.ConsultarCb(emailcb);
    %>
    <script>
            function myFunction() {
        <%
            if (emailcb == null) {
        %>
                alert("Sesión no Iniciada , Se lo Redirigira al Incio");
                window.setTimeout('window.location="Inicio.html"; ', 200);
        <% }
        %>
            }
    </script>
</head>
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
                    <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(emailcb);%></i></a></p>
                    <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                    <li><a href="Ayuda.jsp">Ayuda</a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
<center>
    <div class="row">
        <div class="col-sm-3">
            <img src="Imagenes/Foto4.png" alt="" width="450"/>
        </div>
        <div class="col-sm-6">
            <h1>Actualizar Mi Información de C.Becas</h1>
            <br>
            <form action="ProcesarDatosInforCentroBecas.jsp" method="post">

                <table>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Identificador Centro <span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Que es la Identificación de Centro?. Son las Siglas que simbolizan a tu Centro de Becas, Ejemplo Centro de Becas Cordillera -> CBCA"></span></div>
                            <input type="text" class="form-control" id="id" placeholder="Identificador #1234567890" name="id"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(0).trim());
                                }
                                   %>" required onkeypress='return validaLetras(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2"><center>  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Nombre</div>
                            <input type="text" class="form-control" id="nombre" placeholder="ej: CENEC123" name="nombre"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(2).trim());
                                }
                                   %>"required>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Dirección Empresarial</div>
                            <input type="text" class="form-control" id="dir" placeholder="ej: Ciudadela Ibarra" name="dir"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(3).trim());
                                }
                                   %>"required>
                        </div>  </center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Teléfono Fijo</div>
                            <input type="text" class="form-control" id="tel" placeholder="ej 022465873" name="tel"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(4).trim());
                                }
                                   %>"required maxlength="10" onkeypress='return validaNumericos(event)'>
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">em@il</div>
                            <input type="email" class="form-control" id="email" placeholder="ej: centro_cenec@cenec.org" name="email"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(5).trim());
                                }
                                   %>"required pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}">
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Password</div>
                            <input type="password" class="form-control" id="pass" placeholder="ej: Mispar159357" name="pass"value="<%
                                if (vec.isEmpty()) {
                                    out.print("");
                                } else {
                                    out.print(vec.get(6).trim());
                                }
                                   %>"required maxlength="20" onkeyup="this.value = NumText(this.value)">
                        </div></center>
                    </td></tr>
                    <tr><td> &nbsp;</td></tr>
                    <tr><td colspan="2">  <center>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Verificar Password</div>
                            <input type="password" class="form-control" id="vpass" placeholder="Repetir Password" name="vpass" required maxlength="20" onkeyup="this.value = NumText(this.value)">
                        </div> </center>
                    </td></tr>     
                    <tr><td> &nbsp;</td></tr>

                </table>

                <button type="submit"  class="btn btn-primary btn-lg"> Actualizar Cuenta </button>
                <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                <img src="Imagenes/centros_becas.jpeg" alt=""/>
            </form></div>
        <div class="col-sm-3">

        </div>
    </div>
</center>
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
    var password = document.getElementById("pass")
            , confirm_password = document.getElementById("vpass");

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
    function NumText(string) {//solo letras y numeros
        var out = '';
        //Se añaden las letras validas
        var filtro = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890';//Caracteres validos

        for (var i = 0; i < string.length; i++)
            if (filtro.indexOf(string.charAt(i)) != -1)
                out += string.charAt(i);
            else
                alert("Solo Letras y Numeros");
        return out;
    }
</script>
</body>
</html>
