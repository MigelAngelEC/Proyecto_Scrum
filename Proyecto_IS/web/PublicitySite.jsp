<%-- 
    Document   : PublicitySite
    Created on : 13-jun-2018, 21:02:53
    Author     : EstIvonneGeovannaCam
--%>

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
        <title>Login Centro de Becas</title>
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
            <img src="Imagenes/banner_Emp.jpg" alt="" height="300" width="1850" align="center" />
        </div>
        <!--  columna 2 paneles-->
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-7">
                <br/><br/>
                <center>
                    <div class="jumbotron">
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

                        <div class="btn-toolbar" role="toolbar" aria-label="...">
                            
                            <div class="carousel-inner" role="listbox">

                            <!--Imagenes-->
                            <img src="Imagenes/chevrolet.jpeg" alt="" height="200" width="200" align="center" />
                            <img src="Imagenes/fibeca.jpg" alt="" height="250" width="300" align="center" />
                            <img src="Imagenes/kfc.png" alt="" height="200" width="200" align="center" />

                            <!--Videos-->
                            <iframe width="360" height="315" src="https://www.youtube.com/embed/JYsEQkcgEbo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <iframe width="360" height="315" src="https://www.youtube.com/embed/KAkcZ0N-6hE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

                        </div>
                            
                            <div class="btn-group" role="group" aria-label="...">...</div>
                            <div class="btn-group" role="group" aria-label="...">...</div>
                            <div class="btn-group" role="group" aria-label="...">...</div>
                        </div>
                </center>
            </div>
            <div class="col-sm-3">
                <br/><br/>
                <center>
                    <div class="jumbotron">
                        <!--redes sociales-->
                        <h2>REDES SOCIALES</h2>
                        <br/>
                        <img src="Imagenes/face.jpg" alt="" height="100" width="100" align="center" />
                        <img src="Imagenes/Ins.png" alt="" height="100" width="100" align="center" />
                        <img src="Imagenes/tw.png" alt="" height="100" width="100" align="center" />
                        <br/><br/><br/><br/>
                        <!--grupo de listas Avisos-->
                        <div class="list-group">
                            <a href="#" class="list-group-item active">
                                <h4 class="ANUNCIOS CERCANOS">List group item heading</h4>
                                <p class="NUEVAS OPORTUNIDADES DE BECAS">...</p>
                                <h4 class="NOVEDADES DE PRODUCTOS">List group item heading1</h4>
                                <p class="list-group-item-text">...</p>
                                <h4 class="list-group-item-heading">List group item heading2</h4>
                                <p class="list-group-item-text">...</p>
                            </a>
                        </div>
                        <!-- fin de listas de avisos -->
                    </div>
                </center>
            </div>
        </div>
        <br/><br/>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-7">
                <br/><br/>
                <div class="jumbotron">
                    <h1>CENTROS DE BECAS</h1>
                    <!--Imagenes-->
                    <img src="Imagenes/senecyt.jpg" alt="" height="200" width="200" align="center" />
                    <img src="Imagenes/convocatoria.jpg" alt="" height="250" width="300" align="center" />

                </div>
            </div>
            <div class="col-sm-2">

            </div>

        </div>

    </body>
</html>
