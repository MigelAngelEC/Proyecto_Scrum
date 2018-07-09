<%-- 
    Document   : ProcesarOferta
    Created on : 28/06/2018, 18:49:58
    Author     : migue
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsInfoAcademica"%>
<%@page import="Clases.clsempresa"%>
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
        <meta charset="UTF-8">
        <link rel="icon" href="Imagenes/letterD.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ofertas Laborales</title>
    </head>
    <body background="Imagenes/wall3.jpg" style="background-repeat: round">
        <%
            String cod, ci, nickname, empresa, cargo, descrip, time, xp, estado;
            nickname = request.getParameter("nickn");
            cod = request.getParameter("ofert");
            ci = request.getParameter("cedula");
            empresa = request.getParameter("empre");
            cargo = request.getParameter("cargo");
            descrip = request.getParameter("descr");
            time = request.getParameter("time");
            xp = request.getParameter("exp");
            estado = request.getParameter("stado");
            clsInfoAcademica info = new clsInfoAcademica();
            clsUsuario us = new clsUsuario();
            String Exp = us.PrintExperience(nickname);
            List<String> lista2 = info.ConsultarDatosAcaEspecilidades(nickname);
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
                        <li class=""><a href="Publicidad.jsp">Empresas Asociadas <span class="sr-only">(current)</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right" >
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(nickname);%></i></a></p>
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container">
            <div class="jumbotron">
                <h2>¿ Aplicar Oferta ? </h2>
            </div>
            <div class="jumbotron">
                <center>
                    <h3>Sus Especialidades</h3>
                </center>
                <ul class="list-group">
                    <h4> <%for (int i = 0; i < lista2.size(); i++) {
                            out.print("<li class=list-group-item>" + lista2.get(i) + "</li>");
                        }%></h4>
                </ul>
                <br>
                <center>
                    <h3>Sus Experiencia Laboral</h3>
                    <%
                        out.print(Exp);
                    %>
                </center>
                <br>
            </div>
            <div class="jumbotron">
                <center>
                    <h3>Esta Seguro que desa aplicar a la oferta </h3>
                    <br>
                    <center>
                        <table class="table table-condensed">
                            <tr class="active"><th>Empresa</th><th>Cargo</th><th>Descripción</th><th>Tiempo Requerido</th><th>Experiencia Requerida</th><th>Estado</th></tr>
                            <tr><td> <% out.print(empresa); %> </td><td> <% out.print(cargo);%> </td><td> <% out.print(descrip);%> </td><td class="danger"> <% out.print(time);%> </td><td class="danger"> <% out.print(xp);%> </td><td> <% out.print(estado);%> </td></tr>
                        </table>
                    </center>

                    <br>
                    <form action="ProcesadaOferta.jsp" method="post">
                        <input type="text" name="ofert" value="<%out.println(cod);%>" hidden="true" >
                        <input type="text" name="cedula" value="<%out.println(ci);%>" hidden="true" >
                        <button type="submit" class="btn btn-primary btn-lg">Guardar </button>
                        <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                    </form>

                </center>
            </div>
        </div>
    </body>
</html>
