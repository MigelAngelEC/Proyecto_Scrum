<%-- 
    Document   : Proceso_Usuario
    Created on : 03/06/2018, 15:42:32
    Author     : migue
--%>

<%@page import="Clases.clsUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesando</title>
    </head>
    <body>
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
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <form action="Proceso_Empresa.jsp" method="post">

            <table>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">ruc</div>
                        <input type="text" class="form-control" id="ci" placeholder="RUC: #123456789001" name="ruc">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Cod_oferta</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: AKROSCORP" name="Cod_oferta">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Cargo</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: Ajavi" name="Cargo">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripcion</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: 022467315" name="Descripcion ">
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>



            </table>

            <button type="submit"  class="btn btn-primary btn-lg"> Crear Oferta Laboral </button><br>
            <br>
            <img src="Imagenes/oferta.jpg" higth="300" width="300"/>
        </form>
        <%
            String ci, direc, telefo, celu, name, apel, nickn, mail, pass;

            ci = request.getParameter("cedula");
            nickn = request.getParameter("nickn");
            pass = request.getParameter("passw");
            name = request.getParameter("name");
            apel = request.getParameter("lname");
            mail = request.getParameter("email");
            direc = request.getParameter("direc");
            telefo = request.getParameter("telf");
            celu = request.getParameter("celu");

            clsUsuario obj = new clsUsuario(ci, nickn, pass, name, apel, mail, direc, telefo, celu);
            out.print("<br> Cedula : " + obj.getCedula() + "<br>Nombre&Apellido: " + obj.getNombre() + " " + obj.getApellido());

            boolean eject = obj.InsertarUsuario(ci, nickn, pass, name, apel, mail, direc, telefo, celu);
            if (eject = true) {
                out.print("<br>Usuario Registrado " + eject);
            } else {
                out.print("<br>Fallo al Registrar " + eject);
            }
        %>
    </body>
</html>
