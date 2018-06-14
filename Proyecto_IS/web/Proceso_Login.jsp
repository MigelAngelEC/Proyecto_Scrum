<%-- 
    Document   : Proceso_Login
    Created on : 06-jun-2018, 22:59:17
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <title>Mi Perfil!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body background="Imagenes/wall3.jpg">
        <%
            String nickname = request.getParameter("nick");
            String password = request.getParameter("pass");
            out.println(nickname);
            out.println(password);
            clsLogin log = new clsLogin();

            String correcto = log.autenticacion(nickname, password);

            out.print(correcto);

            if (correcto.equals("true")) {
                HttpSession sess = request.getSession();
                out.print(sess);
                out.print("log correcto");
            } else {
                response.sendRedirect("Inicio.html");
            }

        %>
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
                        <li class=""><a href="#">Empresas Asociadas <span class="sr-only">(current)</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container">
            <div class="jumbotron">
                <h2>Bievenido <%  out.println(nickname);
                    %></h2>
                <br>
                <center><p>Menu</p></center>
                <br>
                <center>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-secondary">Datos de Usuario</button>
                        <button type="button" class="btn btn-secondary">Datos Academicos</button>
                        <button type="button" class="btn btn-secondary">Ofertas Aplicadas</button>
                    </div>
                </center>
            </div>
        </div>
    </body>
</html>
