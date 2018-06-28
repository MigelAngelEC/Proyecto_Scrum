<%-- 
    Document   : ProcesoLos_CB
    Created on : 08-jun-2018, 20:05:30
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        //Programacion
        <%
            //Validacion de login centro de becas
            String email_cb = request.getParameter("correo_cb");
            String password_cb = request.getParameter("pass_cb");
            out.println(email_cb);
            out.println(password_cb);
            clsCentroBecas cb = new clsCentroBecas();

            String correcto_cb = cb.autenticacion_cb(email_cb, password_cb);

            out.print(correcto_cb);
            System.out.println(" estado" + correcto_cb);

            if (correcto_cb.equals("true")) {
                HttpSession sess = request.getSession();
                out.print(sess);
                out.print("login centro de becas correcto");
            } else if (correcto_cb.equals("false")) {
                out.print("login incorrecto");
                // response.sendRedirect("LogueoCB.jsp");
                response.sendRedirect("LogueoCB.jsp");

            }

            //Registro de centros de becas
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
            // out.print(" " +codCB+" "+" "+ NombreCB+" "+ direccionCB+" "+ telefonoCB+" " + EmailCB+" "+ PasswordCB);
            if (eject = true) {
                out.print("<br> Centro de Becas registrado correctamente " + eject);
            } else {
                out.print("<br>Error al Registrar Empresa " + eject);
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
        <div class="col-sm-2">

            <div class="list-group">
                <a href="#" class="list-group-item active">
                    MENU
                </a>
                <form action="DatosInforCentroBecas.jsp" method="post">
                    <input type="text" name="email" value="<%out.println(EmailCB);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Datos de Centro de Becas <u>(Editar)</u></button>
                </form>
                <a href="#" class="list-group-item">Becas Ofertadas</a>
            </div>
        </div>

        <div class="container">
            <center>
                <div class="jumbotron">

                    <h2>Bievenido Centro de Becas <%  out.println(email_cb);%></h2>
             <%       
                    //List<String> infor = objCb.ConsultarCb(email_cb);
                     //out.print(infor);
                      //out.print("cod2");
                     String cod = objCb.InformacionB(email_cb);
                     System.out.println("----"+cod);
                    out.print(cod);
                    
                   
                  %>
                    

                </div>
            </center>
        </div>
    </body>

</html>
