<%-- 
    Document   : DatosAcademicosUsuario
    Created on : 15/06/2018, 19:22:06
    Author     : migue
--%>

<%@page import="Clases.clsInfoAcademica"%>
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
        <title>Datos Academicos de Usuario</title>
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
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    <center>
        <h1>Registrar Mis Datos Academicos</h1>
        <form action="ProcesarDatosAcademicos.jsp" method="post">

            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Mis Datos</h3>
                        </div>
                        <div class="panel-body">
                            <table>
                                <tr><td colspan="2">  <center>
                                    <% out.print(clsInfoAcademica.mostrarComboPerfiles());
                                    %></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Institución</div>
                                        <input type="text" class="form-control" id="Instituto" placeholder="U.P.S" name="Instituto" size="20px">
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Titulo</div>
                                        <input type="text" class="form-control" id="titulo" placeholder="Ing. Sistemas" name="Titulo" size="24px" >
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Especialidad</div>
                                        <input type="text" class="form-control" id="espe" placeholder="Programación" name="Espe"  >
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                            </table>
                        </div>
                    </div>
                    <input type="text" name="nickne" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="btn btn-primary btn-lg">Guardar </button>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </form>
    </center>
</body>
</html>
