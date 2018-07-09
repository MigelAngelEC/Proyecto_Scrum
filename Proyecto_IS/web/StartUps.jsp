<%-- 
    Document   : StartUps
    Created on : 26/06/2018, 21:30:46
    Author     : rowel
--%>

<%@page import="java.util.List"%>
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
        <title>StarUps</title>
    </head>
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
        <br>
        <br>
    <center>
        <%  int start = 0;
            clsUsuario us = new clsUsuario();
            start = us.StartUPUser(nickname);
            if (start == 0) {
        %>
        <h1>Registrar Mi StartUp</h1>
        <form action="StartUpsReg.jsp" method="post">

            <table>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Nombre StartUP</div>
                        <input type="text" class="form-control"id="namest" placeholder="ej: AKROSCORP" name="namest">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripción StartUP</div>
                        <input type="text" class="form-control"id="descst" placeholder="A que se dedica" name="descst">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>

            </table>
            <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
            <button type="submit"  class="btn btn-primary btn-lg"> Crear StartUP </button><br>
            <img src="Imagenes/StarUps.png" higth="600" width="600"/>
        </form><%
        } else {
            clsUsuario cs = new clsUsuario();
            List<String> vec = cs.StartUP(nickname);
        %><h1>Editar Mi StartUp</h1>
        <form action="StartUpdate.jsp" method="post">

            <table>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Nombre StartUP</div>
                        <input type="text" class="form-control" value="<%
                            if (vec.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(vec.get(1));
                            }
                               %>"id="namest" placeholder="ej: AKROSCORP" name="namest">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripción StartUP</div>
                        <input type="text" class="form-control" value="<%
                            if (vec.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(vec.get(2));
                            }
                               %>" id="descst" placeholder="A que se dedica" name="descst">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>

            </table>
            <input type="text" name="codUp" value="<%out.println(vec.get(0));%>" hidden="true" >
            <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
            <button type="submit"  class="btn btn-primary btn-lg"> Actualizar Startup </button><br>
            <img src="Imagenes/StarUps.png" higth="600" width="600"/>
        </form><%
            }
        %>


        <br>

    </center>
</body>
</html>
