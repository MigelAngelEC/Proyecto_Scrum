<%-- 
    Document   : Proceso_Empresa
    Created on : 07/06/2018, 19:09:46
    Author     : rowel
--%>
<%@page import="Clases.clsempresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="icon" href="Imagenes/letterD.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil Empresa</title>
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
    <body background="Imagenes/wall3.jpg" style="background-repeat: round">
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
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"name="drop" >Iniciar Sesión <span class="caret"></span></a>
                            <ul class="dropdown-menu" >
                                <li><a href="LogeoU.jsp" >Iniciar Sesión Usuario</a></li>
                                <li><a href="LogueoE.jsp">Iniciar Sesión Empresa</a></li>
                                <li><a href="LogueoCB.jsp">Iniciar Sesión C.Becas</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="TipoRegistro.html">Registrarse</a></li>
                            </ul>
                        </li>
                     <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container">
            <div class="jumbotron">
                <%
                    String ruc, NombreEmpresa, telefono, direccion, Descripcion, Email, Password;

                    ruc = request.getParameter("ruc");
                    NombreEmpresa = request.getParameter("nempresa");
                    direccion = request.getParameter("direc");
                    telefono = request.getParameter("telefono");
                    Email = request.getParameter("email");
                    Descripcion = request.getParameter("desc");
                    Password = request.getParameter("passw");

                    clsempresa obj = new clsempresa(ruc, NombreEmpresa, direccion, telefono, Email, Descripcion, Password);
                    //out.print("<br> RUC : " + obj.getRuc() + "<br>NombreDeLaEmpresa : " + obj.getNombreEmpresa() + "<br>direc : " + obj.getDescripcion());

                    boolean eject = obj.InsertarEmpresa(ruc, NombreEmpresa, direccion, telefono, Email, Descripcion, Password);
                    if (eject = true) {
                        out.print("<br><h2>Empresa Correctamente Registrado </h2>");
                        out.print("<h3>&nbsp; &nbsp;Para Efectuar los cambios Iniciar Sesión</h3>");
                        out.print("<a  href=LogueoE.jsp class=btn btn-primary btn-lg> <h3><u>Iniciar Sesión</u></h3> </a><br>");
                    } else {
                        out.print("<br>Fallo al Registrar Empresa " + eject);
                        out.print("<a  href=javascript:history.go(-1) class=btn btn-primary btn-lg> Regresar</a><br>");
                    }

                %>
            </div>
        </div>






    </body>
</html>
