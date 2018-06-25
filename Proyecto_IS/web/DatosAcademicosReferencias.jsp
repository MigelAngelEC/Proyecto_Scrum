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
        <title>Referencias del Usuario</title>
    </head>
    <body background="Imagenes/wall3.jpg">
        <% String nickname = request.getParameter("nickn");
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
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(nickname);%></i></a></p>
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    <center>
        <h1>Registrar Mis Referencias Personales</h1>
        <form action="ProcesarDatosAcademicosReferencias.jsp" method="post">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Referencias Personales</h3>
                    </div>
                    <div class="panel-body">
                        <table>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Nombre y Apellido</div>
                                    <input type="text" class="form-control" id="nameref" placeholder="CI #1234567890" name="nameref"  >
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Cargo</div>
                                    <input type="text" class="form-control" id="cargoref1" placeholder="CI #1234567890" name="cargoref" size="30px" >
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Telefono</div>
                                    <input type="text" class="form-control" id="telfref1" placeholder="CI #1234567890" name="telfref" size="28px" >
                                </div></center>
                            </td></tr>
                            <tr><td> <br></td></tr>
                            <tr><td colspan="2">  <center>
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">Parentesco</div>
                                    <input type="text" class="form-control" id="parentescoref1" placeholder="CI #1234567890" name="parentescoref" size="26px" >
                                </div></center>
                            </td></tr>
                        </table>
                    </div>
                </div> 
                <input type="text" name="nickne" value="<%out.println(nickname);%>" hidden="true" >
                <button type="submit"class="btn btn-primary btn-lg">Guardar </button>
                <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
            </div>
            <div class="col-sm-3"></div>


        </form>
    </center>
</body>
</html>
