<%-- 
    Document   : DatosExperienciaLaboral
    Created on : 08/07/2018, 23:48:50
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
        <title>Experiencia Laboral</title>
        <link rel="icon" href="Imagenes/letterD.png">
    </head>
    <% String nickname = request.getParameter("nickn");
    %>
    <script>

        function myFunction() {
        <%
            if (nickname == null) {
        %>
            alert("Sesión no Iniciada , Se lo Redirigira al Incio");
            window.setTimeout('window.location="Inicio.html"; ', 200);
        <% }
        %>
        }
    </script>
    <body background="Imagenes/wall3.jpg" style="background-repeat: space" onload="myFunction()">

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
                        <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    <center>
        <h1>Registrar Mi Experiencia Laboral</h1>
        <form action="ProcesarDatosExperienciaLaboral.jsp" method="post">

            <div class="row">
                <div class="col-sm-3">
                    <img src="Imagenes/XPL.png" alt=""width="400" height="625"/>
                </div>
                <div class="col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Mis Datos</h3>
                        </div>
                        <div class="panel-body">
                            <table>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon" >Tiempo</div>
                                        <select class="form-control" id="time" name="time" >
                                            <option value="3 Meses">3 Meses o menos</option>
                                            <option value="6 Meses">6 Meses</option>
                                            <option value="9 Meses">9 Meses</option>
                                            <option value="2 Años">2 Años</option>
                                            <option value="5 Años">5 Años o más</option>
                                        </select>
                                    </div></center>
                                </td></tr>

                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Empresa</div>
                                        <input type="text" class="form-control" id="Empresa" placeholder="Matelec" name="Empresa" size="20px" required maxlength="25">
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Contacto</div>
                                        <input type="text" class="form-control" id="Contact" placeholder="#0912345678" name="Contact" required maxlength="10"onkeypress='return validaNumericos(event)' >
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                                <tr><td colspan="2">  <center>
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <div class="input-group-addon">Cargo Desempeñado</div>
                                        <input type="text" class="form-control" id="cargo" placeholder="Gerente de TI" name="cargo" size="24px" required maxlength="30" onkeypress='return validaLetras(event)'>
                                    </div></center>
                                </td></tr>
                                <tr><td> <br></td></tr>
                            </table>
                        </div>
                    </div>
                    <input type="text" name="nickne" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="btn btn-primary btn-lg">Guardar </button>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                </div>
                <div class="col-sm-3">
                    <div class="list-group"> <a href="#" class="list-group-item active"> 
                            <h4 class="list-group-item-heading">Necesitas Ayuda?</h4> 
                            <p class="list-group-item-text"></p> </a> 
                        <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Tus Experiencias Laborales</h4> 
                            <p class="list-group-item-text">Son Aquellos datos que refieren a toda la experiencia vivida en el entorno laboral tales como el tiempo trabajado dentro de una empresa y el cargo desempeñado. Nos permite conocer el tiempo promedio que trabajas en una empresa.</p> </a>
                        <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Datos</h4> 
                            <p class="list-group-item-text">En cuanto al tiempo selecciona una sola opción que se encuentre dentro de tu rango, agrega la empresa como el ejemplo. En el campo contacto puedes agregar un número de teléfono o celular de una persona referente que trabaje en tu antigua empresa y escribe finalmente el Cargo que desempeñaste..</p> </a> </div>



                </div>
            </div>
        </form>
    </center>
    <script>
        function validaNumericos(event) {
            if (event.charCode >= 48 && event.charCode <= 57) {
                return true;
                
            }
            return false;
        }
        function validaLetras(event) {
            if (event.charCode >= 48 && event.charCode <= 57) {
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
