<%-- 
    Document   : ProcesarDatosExperienciaLaboral
    Created on : 09/07/2018, 0:33:40
    Author     : migue
--%>

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
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Experiencia Laboral</title>
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
    <% String nickname = request.getParameter("nickne");
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

        <div class="container">
            <div class="jumbotron">
                <%
                    String time, empresa, contacto, cargo;
                    time = request.getParameter("time");
                    empresa = request.getParameter("Empresa");
                    contacto = request.getParameter("Contact");
                    cargo = request.getParameter("cargo");
                    clsUsuario us = new clsUsuario();
                    boolean eject = us.InsertarXP(time, empresa, contacto, cargo, nickname);
                    if (eject = true) {
                        out.print("<br> <h2>Experiencia Laboral Correctamente Actualizados </h2>");
                        out.print("<h3>&nbsp; &nbsp;Para Efectuar los cambios Cierre Sesión</h3>");
                        out.print("<a  href=LogeoU.jsp class=btn btn-primary btn-lg> <h3><u>Cerrar Sesión</u></h3> </a><br>");
                    } else {
                        out.print("<br><h2>Error al Actualizar Experiencia Laboral </h2>");
                        out.print("<a  href=javascript:history.go(-1) class=btn btn-primary btn-lg> Cerrar Sesión </a><br>");
                    }
                %>
            </div>
        </div>
    </body>
</html>
