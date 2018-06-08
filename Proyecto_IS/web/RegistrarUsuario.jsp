<%-- 
    Document   : RegistrarUsuario
    Created on : 03/06/2018, 15:42:17
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
        <title>Registrar Usuario</title>
    </head>
    <body background="Imagenes/wall3.jpg">

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
    <center>

        <h1>Registrar Usuario</h1>
        <br>
        <form action="Proceso_Usuario.jsp" method="post">

            <table>
                <tr><td colspan="2">  <label class="sr-only" for="ci">Username</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Cedula Identidad</div>
                            <input type="text" class="form-control" id="ci" placeholder="CI #1234567890"  >
                        </div>
                    </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Edad</div>
                            <input type="number" class="form-control" id="ed" placeholder="22" size="100">
                        </div>
                    </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td> Dirección</td><td> <input type="text" name="direccion"></td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td>Telefono Fijo</td><td> <input type="text" name="phone"></td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td>Telefono Celular </td><td><input type="text" name="celular"></td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td>Nombres </td><td><input type="text" name="name"></td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td>Apellidos </td><td><input type="text" name="lname"></td></tr>
                <tr><td> &nbsp;</td></tr>
            </table>

            <button type="submit"> Enviar </button><br>
            <img src="Imagenes/Users.png" alt=""/>
        </form>
    </center>
</body>
</html>
