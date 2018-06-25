<%-- 
    Document   : Oferta_Empleo
    Created on : 13/06/2018, 21:07:28
    Author     : rowel
--%>

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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oferta_Empleo</title>
    </head>
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
    <center>
        <%
            String ruc, cargo, descrip;
            int cod = 0;
            clsOfertaEmpleo obj = new clsOfertaEmpleo();
            ruc = request.getParameter("ruc");
            cargo = request.getParameter("cargo");
            descrip = request.getParameter("desc");
            cod = obj.ConsultarMaxOferta();
            out.print(ruc + "-" + cargo + "-" + descrip + "-" + cod + "<br>");
            clsOfertaEmpleo obj2 = new clsOfertaEmpleo(ruc, cod, cargo, descrip);
            boolean eject = obj.InsertarOfertaEmpresa(ruc, cod, cargo, descrip);
            if (eject = true) {
                out.print("<br> Oferta Laboral Registrada Correctamente " + eject);
            } else {
                out.print("<br>Error al Registrar Oferta Laboral " + eject);
            }
        %>
          <a  href="javascript:history.go(-2)" class="btn btn-primary btn-lg"> Volver </a><br>
    </center>
</body>
</html>
