<%-- 
    Document   : StartUpAdd
    Created on : 09/07/2018, 4:12:27
    Author     : migue
--%>

<%@page import="Clases.clsstarups"%>
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
        <title>StarUps</title>
    </head>
    <% String nickname = request.getParameter("nickn");
    %>
    <style>
        body {text-align:center; padding:20px}
        input {
            min-width:200px!important;
            max-width:99.99%!important;
            transition: width 0.25s;
            text-align:center;
        }
    </style>
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
        <div class="row">
            <div class="col-sm-3 col-md-3">
                <img src="https://www.freeiconspng.com/uploads/--relations-social-graph-user-group-icon--icon-search-engine-22.png" width="400"/>
            </div>
            <div class="col-sm-6 col-md-6">
                <br>
                <h2>Usuarios Disponibles</h2>
                <br>
                <center>
                    <%
                        clsstarups st = new clsstarups();
                        out.print(st.UsersStartUp(nickname));
                    %>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                </center>
            </div>
            <div class="col-sm-3 col-md-3">
                <br>   <br>
                <div class="list-group"> <a href="#" class="list-group-item active"> 
                        <h4 class="list-group-item-heading">Necesitas Ayuda?</h4> 
                        <p class="list-group-item-text"></p> </a> 
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">StartUp</h4> 
                        <p class="list-group-item-text">En esta pagina a tu izquierda se encuentran todos los Usuarios Disponibles los cuales puedes agregar a tu StartUp .</p> </a>
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Datos</h4> 
                        <p class="list-group-item-text">Puedes agregar a cualquier usuario solamente dando clic en “Agregar”    .</p> </a> </div>
            </div>
        </div>      
</html>
