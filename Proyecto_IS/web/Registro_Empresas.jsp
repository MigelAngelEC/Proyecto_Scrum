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
        <title>Registro Empresa</title>
    </head>
    <body background="Imagenes/fondo_1.jpg">
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
        <br>
        <br>
        <center>
        <h1>Registrar Empresa</h1>
        <form action="Proceso_Usuario.jsp" method="post">
            
            
           <table>
                <tr><td colspan="2">  <label class="sr-only" for="ci"> Username</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">RUC</div>
                            <input type="number" class="form-control" id="ruc" placeholder="digite 13 digitos">
                        </div>
                    </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Nombre De La Empresa</div>
                            <input type="text" class="form-control" id="nEmpresa" placeholder="Solo Caracteres" >
                        </div>
                    </td></tr>
                <tr><td> &nbsp;</td></tr>
                 <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Direccion</div>
                            <input type="text" class="form-control" id="dire" placeholder="Solo Caracteres" >
                        </div>
                    </td></tr>
               
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Telefono</div>
                            <input type="number" class="form-control" id="tel" placeholder="Solo Digitos" >
                        </div>
                    </td></tr>
                
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Email</div>
                            <input type="text" class="form-control" id="mail" placeholder="example@.com" >
                        </div>
                    </td></tr>
               
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <div class="input-group-addon">Descripcion</div>
                            <input type="text" class="form-control" id="desc" placeholder="Solo Caracteres" >
                        </div>
                    </td></tr>
                
                <tr><td> &nbsp;</td></tr>
            </table>
           
            <button type="submit"> Registrarse  </button><br>
            <img src="Imagenes/empresa.jpg" higth="300" width="300"/>
        </form>
</center>
    </body>
</html>
