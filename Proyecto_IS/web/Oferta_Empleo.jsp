<%-- 
    Document   : Oferta_Empleo
    Created on : 13/06/2018, 21:07:28
    Author     : rowel
--%>

<%@page import="Clases.clsempresa"%>
<%@page import="Clases.clsOfertaEmpleo"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oferta_Empleo</title> </head>
    <style>
        body {text-align:center; padding:20px}
        input {
            min-width:200px!important;
            max-width:99.99%!important;
            transition: width 0.25s;
            text-align:center;
        }
    </style>
    <%
        String email_emp;
        email_emp = request.getParameter("emaile");
    %>
    <script>
        function myFunction() {
        <%
            if (email_emp == null) {
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
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(email_emp);%></i></a></p>
                        <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                  <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container">
            <h2> Oferta Laboral</h2>
            <center> <div class="jumbotron">

                    <%
                        String emailpe, ruc, cargo, descrip, time, xp;
                        int cod = 0;
                        clsOfertaEmpleo obj = new clsOfertaEmpleo();
                        clsempresa emp = new clsempresa();
                        emailpe = request.getParameter("emaile");
                        ruc = emp.RucEnterprise(emailpe);
                        cargo = request.getParameter("cargo");
                        descrip = request.getParameter("desc");
                        time = request.getParameter("time");
                        xp = request.getParameter("xp");
                        cod = obj.ConsultarMaxOferta();
                        out.print(ruc + cargo + descrip + time + xp + cod);
                        boolean eject = obj.InsertarOfertaEmpresa(ruc, cod, cargo, descrip, time, xp);
                        if (eject = true) {
                            out.print("<br> <h2>Oferta Corractamente Registrada</h2>");
                            out.print("<h3>&nbsp; &nbsp;Para Efectuar los cambios Cierre Sesión</h3>");
                            out.print("<a  href=LogeoU.jsp class=btn btn-primary btn-lg> <h3><u>Cerrar Sesión</u></h3> </a><br>");
                        } else {
                            out.print("<br><h2>Error al Registrar Oferta </h2>");
                            out.print("<a  href=javascript:history.go(-1) class=btn btn-primary btn-lg> Volver</a><br>");
                        }
                    %>


                </div>
        </div>
    </center>
</body>
</html>
