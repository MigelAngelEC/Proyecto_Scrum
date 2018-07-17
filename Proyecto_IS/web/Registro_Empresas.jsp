<%-- 
    Document   : Registro_Empresas
    Created on : 04/06/2018, 21:43:48
    Author     : rowel
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
        <title>Registro Empresa</title>
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
    <body background="Imagenes/wall3.jpg" style="background-repeat: round">
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
        <br>
        <br>
    <center>
        <h1>Registrar Empresa</h1>
        <br>
        <form action="Proceso_Empresa.jsp" method="post">

            <table>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">RUC</div>
                        <input type="text" class="form-control" id="ruc" placeholder="RUC: #123456789001" name="ruc" required maxlength="13" onfocusout="validar()">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Nombre de la Empresa</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: AKROSCORP" name="nempresa" required>
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Direccion</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: Ajavi" name="direc" required>
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Telefono</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: 022467315" name="telefono" required>
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Email</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej:akroscgi@akros.com" name="email"required>
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Password</div>
                        <input type="password" class="form-control" id="ci" placeholder="ej:AkrosC159" name="passw">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Repetir Password</div>
                        <input type="password" class="form-control" id="ci" placeholder="Repetir Password">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripción Empresa</div>
                        <input type="text" class="form-control" id="ci" placeholder="A que se dedica" name="desc">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>

            </table>

            <button type="submit"  class="btn btn-primary btn-lg"> Crear Cuenta </button><br>
            <img src="Imagenes/empresa.jpg" higth="300" width="300"/>
        </form>
    </center>
</body>
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
<script type = "text/javascript">
    function validar() {
        var number = document.getElementById('ruc').value;
        var dto = number.length;
        var valor;
        var acu = 0;
        if (number == "") {
            alert('No has ingresado ningún dato, porfavor ingresar los datos correspondientes.');
        } else {
            for (var i = 0; i < dto; i++) {
                valor = number.substring(i, i + 1);
                if (valor == 0 || valor == 1 || valor == 2 || valor == 3 || valor == 4 || valor == 5 || valor == 6 || valor == 7 || valor == 8 || valor == 9) {
                    acu = acu + 1;
                }
            }
            if (acu == dto) {
                while (number.substring(10, 13) != 001) {
                    alert('Los tres últimos dígitos no tienen el código del RUC 001.');
                    document.getElementById("ruc").value=" ";
                    return;
                }
                while (number.substring(0, 2) > 24) {
                    alert('Los dos primeros dígitos no pueden ser mayores a 24.');
                     document.getElementById("ruc").value=" ";
                    return;
                }
                alert('El RUC está escrito correctamente');
              //  alert('Se procederá a analizar el respectivo RUC.');
                var porcion1 = number.substring(2, 3);
                if (porcion1 < 6) {
                    alert('El tercer dígito es menor a 6, por lo \ntanto el usuario es una persona natural.\n');
                     document.getElementById("ruc").value=" ";
                } else {
                    if (porcion1 == 6) {
                        alert('El tercer dígito es igual a 6, por lo \ntanto el usuario es una entidad pública.\n');
                    } else {
                        if (porcion1 == 9) {
                            alert('El tercer dígito es igual a 9, por lo \ntanto el usuario es una sociedad privada.\n');
                        }
                    }
                }
            } else {
                alert("ERROR: Por favor no ingrese texto");
            }
        }
    }
</script>
<script>
    var password = document.getElementById("passw")
            , confirm_password = document.getElementById("passwv");

    function validatePassword() {
        if (password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Contraseñas Distintas");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
</script>
</html>
