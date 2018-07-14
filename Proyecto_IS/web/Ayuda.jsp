<%-- 
    Document   : Ayuda
    Created on : 11/07/2018, 10:54:53
    Author     : migue
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
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Login de candidatos</title>
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
                <br>
                <div class="list-group">
                    <a href="#" class="list-group-item active "><h4>Ayuda Navegacional</h4></a>
                    <a href="#" class="list-group-item"><h4 align="left" ><span class="glyphicon glyphicon-share-alt" aria-hidden="true"> <i> Menus</i></span></h4></a>
                    <a href="#" class="list-group-item active"><h4>Ayuda Usuario</h4></a>
                    <a href="#" class="list-group-item"><h4 align="left" ><span class="glyphicon glyphicon-user" aria-hidden="true"> <i> Menus</i> </span></h4></a>
                    <a href="#" class="list-group-item active"><h4>Ayuda Empresa</h4></a>
                    <a href="#" class="list-group-item"><h4 align="left" ><span class="glyphicon glyphicon-xbt" aria-hidden="true">  <i> Menus</i> </span></h4></a>
                    <a href="#" class="list-group-item active"><h4>Ayuda Centro de Becas</h4></a>
                    <a href="#" class="list-group-item"><h4 align="left" ><span class="glyphicon glyphicon-education" aria-hidden="true">  <i> Menus</i> </span></h4></a>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="bs-callout bs-callout-danger" id="callout-glyphicons-dont-mix"> 
                    <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> <h4 align="left"    >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                    <h4 align="left"  id="apa"  >Don't mix with other components</h4> 
                    <br>
                    <p>Icon classes cannot be directly combined with other components. They should not be used along with other classes on the same element. Instead, add a nested 
                        <code>&lt;span&gt;</code> and apply the icon classes to the
                        <code>&lt;span&gt;</code>.
                    </p> 
                </div>
            </div>
            <div class="col-sm-1">

            </div>
        </div>

    </body>
</html>
