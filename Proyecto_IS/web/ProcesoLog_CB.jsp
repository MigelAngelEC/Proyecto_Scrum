<%-- 
    Document   : ProcesoLos_CB
    Created on : 08-jun-2018, 20:05:30
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsCentroBecas"%>
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

        <title>Bienvenidos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body background="Imagenes/wall3.jpg">
        <%
            //Validacion de login empresarial
            String email_cb = request.getParameter("correo_cb");
            String password_cb = request.getParameter("pass_cb");
            out.println(email_cb);
            out.println(password_cb);
            clsCentroBecas cb = new clsCentroBecas();

            String correcto_cb = cb.autenticacion_cb(email_cb, password_cb);

            out.print(correcto_cb);
            System.out.println(correcto_cb);

            if (correcto_cb.equals("true")) {
                HttpSession sess = request.getSession();
                out.print(sess);
                out.print("login centro de becas correcto");
            } else {
                out.print(correcto_cb);
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


        <div class="container">
            <div class="jumbotron">
                <h2>Bievenido Centro de Becas <%  out.println(email_cb);
                    %></h2>
                <br>
                <center><p>Menu</p></center>
                <br>
                <center>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <form action="DatosUsuario.jsp" method="post">
                            <input type="hidden" name="nick" value="<%out.println(email_cb);%>" >
                            <button type="submit" class="btn btn-secondary">Datos de Centro de Becas</button>
                        </form>
                        <br>
                        <form><button type="button" class="btn btn-secondary">Becas Ofertadas</button>
                        </form>
                        <br>
                        <form>
                            <button type="button" class="btn btn-secondary">Becas Aplicadas</button>
                        </form>
                    </div>
                </center>
            </div>
        </div>
    </body>

</html>
