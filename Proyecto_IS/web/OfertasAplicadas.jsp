<%-- 
    Document   : OfertasAplicadas
    Created on : 07/07/2018, 18:38:03
    Author     : migue
--%>
<%@page import="Clases.clsUsuario"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.util.*" session="true" %>
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
        <link rel="icon" href="Imagenes/letterD.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Ofertas Aplicadas </title>
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
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <%
            clsUsuario us = new clsUsuario();
            String printed = us.PrintOfertsApply(nickname);%>
        <div class="row">
            <div class="col-sm-2">
                <img src="https://woculus.com/wp-content/uploads/2016/11/hired-514x600.png" width="400"/>
            </div>

            <div class="col-sm-8 ">

                <div class="container">
                    <h2>Ofertas Aplicadas</h2>
                    <br>
                    <% out.print(printed);%>
                    <center>   <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br></center>
                </div>

            </div>
            <div class="col-sm-2">
                <div class="list-group"> <a href="#" class="list-group-item active"> 
                        <h4 class="list-group-item-heading">Necesitas Ayuda?</h4> 
                        <p class="list-group-item-text"></p> </a> 
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">O.Aplicadas</h4> 
                            <p class="list-group-item-text">En la tabla izquierda puedes observar las ofertas que has aplicado, con una breve descripción de la empresa y el cargo además del estado de la misma.</p> </a>
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Datos</h4> 
                        <p class="list-group-item-text">Puedes eliminar la oferta a la que has aplicado clicando en el botón Eliminar Oferta .</p> </a> </div>

            </div>

        </div>
    </div>


</body>
</html>
