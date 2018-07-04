<%-- 
    Document   : InforBecasPublico
    Created on : 28-jun-2018, 14:08:46
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsCentroBecas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->

       <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ofertas de becas</title>
    </head>
    <body background="Imagenes/wall3.jpg">
          <!-- BANNER APLICACION DE BECAS -->  
        <div class="row">
            <center>
            <img src="Imagenes/b1.png" alt="BANNER" width="1720" height="250"/> 
            </center>
        </div>
         <!-- BARRA DE NAVEGACION PRINCIPAL -->  
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
         
         <!-- MENU IZQUIERDO DE LA PAGINA -->  
        <div class="col-sm-2">

            <div class="list-group">
                <a href="#" class="list-group-item active">
                   CENTROS ASOCIADOS
                </a>
                
                <% 
                clsCentroBecas cb= new clsCentroBecas();
                String centro=cb.PostulacionPublico();
                out.print(centro);
                %>
                <!--revisar metodo-->
                <a href="#" class="list-group-item">Becas Ofertadas</a>
            </div>
        </div>
            
         <!-- CONTENEDOR DE INFORMACION GENERAL DEL CNETRO DE BECAS -->  
        <div class="container">
            <center>
                <div class="jumbotron">
                    <h1>INFORMACION</h1>
                </div>
            </center>
        </div>
        <h1>BECAS!</h1>
    </body>
</html>