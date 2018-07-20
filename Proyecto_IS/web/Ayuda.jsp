<%-- 
    Document   : Ayuda
    Created on : 11/07/2018, 10:54:53
    Author     : migue
--%>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Imagenes/letterD.png">
        <title>¡Ayuda!</title>
        <style>
            .bs-callout {
                padding: 20px;
                margin: 20px 0;
                border: 1px solid #eee;
                border-left-width: 5px;
                border-radius: 3px;
            }
            .bs-callout h4 {
                margin-top: 0;
                margin-bottom: 5px;
            }
            .bs-callout p:last-child {
                margin-bottom: 0;
            }
            .bs-callout code {
                border-radius: 3px;
            }
            .bs-callout+.bs-callout {
                margin-top: -5px;
            }
            .bs-callout-default {
                border-left-color: #777;
            }
            .bs-callout-default h4 {
                color: #777;
            }
            .bs-callout-primary {
                border-left-color: #428bca;
            }
            .bs-callout-primary h4 {
                color: #428bca;
            }
            .bs-callout-success {
                border-left-color: #5cb85c;
            }
            .bs-callout-success h4 {
                color: #5cb85c;
            }
            .bs-callout-danger {
                border-left-color: #d9534f;
            }
            .bs-callout-danger h4 {
                color: #d9534f;
            }
            .bs-callout-warning {
                border-left-color: #f0ad4e;
            }
            .bs-callout-warning h4 {
                color: #f0ad4e;
            }
            .bs-callout-info {
                border-left-color: #5bc0de;
            }
            .bs-callout-info h4 {
                color: #5bc0de;
            }
        </style>


    </head>
    <style>
        body {text-align:center; padding:20px}
        input {
            min-width:200px!important;
            max-width:99.99%!important;
            transition: width 0.25s;
            text-align:center;
        }
    </style>
    <body background="Imagenes/wall31.jpg" style="background-repeat: repeat ">
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
        <h2><i>¿Necesitas Ayuda?</i></h2>
        <hr style="color:#0056b2;" />
        <div class="row">

            <div class="col-sm-2">
                <img src="Imagenes/help.png" alt="" height="850"/>
            </div>
            <div class="col-sm-9">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <h4>Menús Navegacionales</h4>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <h4> Una vez iniciada sesión en la parte izquierda contaras con un menú de opciones tales como:
                                </h4><br>
                                <img src="Imagenes/Menu2.gif" alt="Menu Empresas" title="Menu Empresas" height="200"/>
                                <img src="Imagenes/Menu.gif" alt="" title="Menu Usuarios"height="350"/>
                                <img src="Imagenes/Menu3.gif" alt=""height="200" title="Menu Centro de Becas"/>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" >
                                    <h4>Usuarios</h4>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <h4> Datos de usuario</h4>
                                Al registrarte como usuario llenaras estos datos, sin embargo, si deseas realizar algún cambio puedes hacerlo clicando en el menú navegacional de tu usuario en la opción “Datos de Usuario” si embargo no podrás modificar tu cedula ya que es tu identificador en toda la web
                                <br><h4>Datos académicos </h4>
                                Accede a esta opción después de iniciar sesión clicando en el menú navegacional la opción “Datos Académicos”, podrás ir agregando tus datos académicos de<br>sde primer nivel hasta Doctorado si es que posees dicho título. Además de agregar en que te especializas.
                                <br><h4> Experiencia laboral</h4>
                                Agrega toda la experiencia que has ido obteniendo a lo largo de los años en las distintas empresas, datos importantes como el tiempo, la empresa y el cargo desempeñado
                                <br><h4> Ofertas Laborales y Aplicadas</h4>
                                En el Menú Navegacional podrás dirigirte y observar las ofertas disponibles que nuestras empresas asociadas han publicado, si así lo deseas podrás aplicar a las mismas clickea en el botón derecho “Aplicar” y a continuación observaras a detalle todos los requerimientos de la empresa VS tu experiencia permitiendo observar si eres apto o no para el cargo
                                En la siguiente opción O. Aplicadas, si lo deseas puedes eliminar alguna oferta a la que has aplicado sin importar el motivo.
                                <br><h4>Becas Disponibles y Aplicadas</h4>
                                En el Menú Navegacional tendrás 2 opciones: B. Disponibles, en la cual podrás aplicar a una Beca por parte de nuestros Centro de Becas Asociados con el fin de mantenerte siempre en constante aprendizaje. De igual manera puedes eliminar cualquier beca a la que has aplicado en la opción de Becas Aplicadas
                                <br><h4>Startups</h4>
                                Las Startups son pequeñas empresas que están empezando en el mercado, si tu lo deseas puedes acordar con tus amigos, registrarse y agregarse como Startup y continuar como un grupo que busca el beneficio para sí mismo 

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <h4>Empresas</h4>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body">
                                <h4>Datos de Empresa</h4>
                                En esta opción puede editar los datos de tu empresa en caso de requerir actualizar algún parámetro, dirígete a tu menú navegacional (ya logueado) y cliquea en Datos de mi empresa para comenzar
                                <br>  <h4>Crear y Editar Oferta Laboral</h4>
                                Tendrás 2 apartados para estas opciones en el Menú Navegacional, Crear una oferta laboral es muy sencillo, clickea en la opción y agrega los datos requeridos.
                                Edita las ofertas ya sea actualizar o eliminar ofertas que consideras inoportunas mediante 2 clics, el primero seleccionaras la oferta y con el 2do editar (actualizar cualquier requerimiento de la oferta), eliminar (permanente, no se pueden deshacer los cambios).

                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="h1">
                            <h4 class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                    <h4>Centro de Becas</h4>
                                </a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="h1">
                            <div class="panel-body">
                                <h4>Datos Centro de Becas</h4>
                                Edita tus datos como Centro de Becas, datos importantes como tu identificación la cual es descrita en forma de siglas ej.: “Centro de Becas La Cordillera”, “CBLC”. Además de tus datos empresariales.
                                <br>   <h4>Crear y Editar Beca</h4>
                                Ambas opciones disponibles en el Menú Navegacional de tu CB, Crear una Beca es tan sencillo, selecciona la fecha de inicio, fin, el horario en que se dictara y describe de que trata la beca.
                                De igual manera puedes actualizar o eliminar una beca de acuerdo a tus necesidades, clickea en la beca que desees eliminar y desaparecerá de tu centro de becas.

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-sm-1">

            </div>
        </div>

    </body>
</html>
