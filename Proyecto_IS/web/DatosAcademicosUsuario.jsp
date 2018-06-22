<%-- 
    Document   : DatosAcademicosUsuario
    Created on : 15/06/2018, 19:22:06
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
        <title>Datos Academicos de Usuario</title>
    </head>
    <body background="Imagenes/wall3.jpg">
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
    <center>
        <h1>Registrar Mis Datos Academicos</h1>
        <form action="ProcesarDatosAcademicos.jsp" method="post">
            <div class="container">
                <div class="jumbotron">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                        Datos Academicos Usuario</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <table>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Institución</div>
                                                <input type="text" class="form-control" id="Instituto" placeholder="CI #1234567890" name="cedula" readonly >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Titulo</div>
                                                <input type="text" class="form-control" id="titulo" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Nivel</div>
                                                <input type="text" class="form-control" id="Nivel" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Especialidad</div>
                                                <input type="text" class="form-control" id="espe" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                        Referencia Personal #1</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Cedula</div>
                                                <input type="text" class="form-control" id="ciref" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Nombre y Apellido</div>
                                                <input type="text" class="form-control" id="nameref" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Cargo</div>
                                                <input type="text" class="form-control" id="cargoref1" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Telefono</div>
                                                <input type="text" class="form-control" id="telfref1" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Parentesco</div>
                                                <input type="text" class="form-control" id="parentescoref1" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                        Referencia Personal #2</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Cedula</div>
                                                <input type="text" class="form-control" id="ciref2" placeholder="CI #1234567890" name="cedula" >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Nombre y Apellido</div>
                                                <input type="text" class="form-control" id="nameref2" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Cargo</div>
                                                <input type="text" class="form-control" id="cargoref2" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Telefono</div>
                                                <input type="text" class="form-control" id="telfref2" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                        <tr><td> <br></td></tr>
                                        <tr><td colspan="2">  <center>
                                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                <div class="input-group-addon">Parentesco</div>
                                                <input type="text" class="form-control" id="parentescoref2" placeholder="CI #1234567890" name="cedula"  >
                                            </div></center>
                                        </td></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit">Guardar </button>
                </div>
            </div>
        </form>
    </center>
</body>
</html>
