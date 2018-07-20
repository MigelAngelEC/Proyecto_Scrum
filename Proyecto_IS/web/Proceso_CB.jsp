<%-- 
    Document   : Proceso_CB
    Created on : 26-jun-2018, 20:48:08
    Author     : EstIvonneGeovannaCam
--%>

<!DOCTYPE html>
<%@page import="Clases.clsCentroBecas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <!-- Chatra {literal} -->
    <script>
        (function (d, w, c) {
            w.ChatraID = 'zP9v9br5gsMWXE9eR';
            var s = d.createElement('script');
            w[c] = w[c] || function () {
                (w[c].q = w[c].q || []).push(arguments);
            };
            s.async = true;
            s.src = 'https://call.chatra.io/chatra.js';
            if (d.head)
                d.head.appendChild(s);
        })(document, window, 'Chatra');
    </script>
    <!-- /Chatra {/literal} -->
        <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Perfil Centro de Becas!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            body {text-align:center; padding:20px}
            input {
                min-width:200px!important;
                max-width:99.99%!important;
                transition: width 0.25s;
                text-align:center;
            }
        </style>

    </head>
    <body background="Imagenes/wall3.jpg" style="background-repeat: round"onload="checkEdits(), checkEdits1(), checkEdits2()">
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
                    //Confirmacion de registro de centros de becas
                    String codCB, NombreCB, direccionCB, telefonoCB, EmailCB, PasswordCB;

                    codCB = request.getParameter("id");
                    NombreCB = request.getParameter("nombre");
                    direccionCB = request.getParameter("dir");
                    telefonoCB = request.getParameter("tel");
                    EmailCB = request.getParameter("email");
                    PasswordCB = request.getParameter("pass");
                    System.out.println(codCB + " " + NombreCB + " " + direccionCB + " " + telefonoCB + " " + EmailCB + " " + PasswordCB);

                    clsCentroBecas objCb = new clsCentroBecas();
                    // out.print("<br> COD : " + objCb.getCod_b()+ "<br>NombreDeLaEmpresa : " + objCb.getNombre_cb());

                    boolean eject = objCb.InsertarCb(codCB, NombreCB, direccionCB, telefonoCB, EmailCB, PasswordCB);
                    if (eject = true) {
                        out.print("<br> <h2>Centro de Becas Correctamente Registrado </h2>");
                        out.print("<h3>&nbsp; &nbsp;Para Efectuar los cambios Cierre Sesión</h3>");
                        out.print("<a  href=LogueoCB.jsp class=btn btn-primary btn-lg> <h3><u>Iniciar Sesión/u></h3> </a><br>");
                    } else {
                        out.print("<br><h2>Error al Actualizar Datos de Empresa </h2>");
                        out.print("<a  href=javascript:history.go(-1) class=btn btn-primary btn-lg> Volver</a><br>");
                    }
                %>

            </div>
        </div>



    </body>
</html>
