<%-- 
    Document   : BecasDispon
    Created on : 08/07/2018, 20:03:08
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
        <title>Becas Disponibles</title>
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
                        <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="row">
            <div class="col-sm-3 col-md-2">
                <img src="Imagenes/Foto5.png" alt="" width="310"/>
            </div>
            <div class="col-sm-6 col-md-8">
                <br>
                <h2>Becas Disponibles</h2>
                <br>
                <center>
                    <%
                        clsUsuario us = new clsUsuario();
                        out.print(us.PrintBecas(nickname));
                    %>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                </center>
            </div>
            <div class="col-sm-3 col-md-2">
                <br><br><br>
                <div class="list-group"> <a href="#" class="list-group-item active"> 

                        <h4 class="list-group-item-heading">Necesitas Ayuda?</h4> 
                        <p class="list-group-item-text"></p> </a> 
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Becas Disponibles</h4> 
                        <center> <img src="http://shynemedia.com/dev/wow/amadeus/20160311_wow-amadeus_landing-page/media/solutions/assets/images/20160316_airlines_graphic-icon-3_hand.png" width="100" height="100" /></center>
                        <br> <p class="list-group-item-text">A su izquierda se encuentran todas las ofertas de trabajo disponibles teniendo en cuenta la descripción de la beca, su inicio y fin además de su horario correspondiente. Aquellas becas a las cuales no se puede aplicar debido a que el botón “Aplicar” no se encuentra activa, debido a su estado, Para más información vea a Ayuda</p> </a>
                </div>
            </div>

        </div>           

</html>
