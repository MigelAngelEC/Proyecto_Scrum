<%-- 
    Document   : Publicidad
    Created on : 19-jun-2018, 20:28:43
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.Imagenes"%>
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
        <title>Pagina Publicitaria</title>
    </head>
    <body background="Imagenes/wall3.jpg">

        <!-- NAV BAR-->
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
                        <li class=""><a href="#">Empresas Asociadas <span class="sr-only">(current)</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <!--  divisiones de la pagina -->
        <!--  columna 1 Banner-->
        <div class="row">
            <div class="col-sm-2">
                <div class="list-group">
                    <a href="#" class="list-group-item active">
                        Cras justo odio
                    </a>
                    <a href="#" class="list-group-item">GGGGGG</a>
                    <a href="#" class="list-group-item">Morbi leo risus</a>
                    <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                    <a href="#" class="list-group-item">Vestibulum at eros</a>
                </div>
            </div>

            <div class="col-sm-8">
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Action <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#p1">Action</a></li>
                        <li><a href="#p2">Another action</a></li>
                        <li><a href="#p3">Galeria</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </div>

                <a name="p1">
                    <div class="jumbotron" id="p1">
                        <h1>EMPRESAS ASOCIADAS</h1>
                        <div class="carousel-inner" role="listbox">

                            <!--Imagenes-->
                            <img src="Imagenes/chevrolet.jpeg" alt="" height="200" width="200" align="center" />
                            <img src="Imagenes/fibeca.jpg" alt="" height="250" width="300" align="center" />
                            <img src="Imagenes/kfc.png" alt="" height="200" width="200" align="center" />

                            <!--Videos-->
                            <iframe width="360" height="315" src="https://www.youtube.com/embed/JYsEQkcgEbo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <iframe width="360" height="315" src="https://www.youtube.com/embed/KAkcZ0N-6hE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

                        </div>
                    </div>
                </a>

                <a name="p2">
                    <div class="jumbotron" id="p2">
                        <h1>CENTROS DE BECAS</h1>
                        <!--Imagenes-->
                        <img src="Imagenes/senecyt.jpg" alt="" height="200" width="200" align="center" />
                        <img src="Imagenes/convocatoria.jpg" alt="" height="250" width="300" align="center" />

                    </div>
                </a>


                <a name="p3">
                    
                    
                    <%
                       
                       Imagenes im=new Imagenes();

                        String dir = im.consultaPath("chev");

                        out.print(dir);
                        System.out.println(dir);

                       


                    %>
                    <div class="jumbotron" id="p2">
                        <div class="media" id="carrusel">
                            <div class="media-left">
                                <a href="#">
                                    <form action="Publicidad.jsp">
                                        <button type="submit" class="btn btn-outline-dark">Mostrar</button>
                                    </form>
                                </a>
                            </div>

                        </div>
                </a>


            </div>
        </div>

    </body>
</html>
