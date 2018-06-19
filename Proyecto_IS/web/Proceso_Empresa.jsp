<%-- 
    Document   : Proceso_Empresa
    Created on : 07/06/2018, 19:09:46
    Author     : rowel
--%>
<%@page import="Clases.clsempresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String ruc, NombreEmpresa, telefono, direccion, Descripcion, Email, Password;

            ruc = request.getParameter("ruc");
            NombreEmpresa = request.getParameter("nempresa");
            direccion = request.getParameter("direc");
            telefono = request.getParameter("telefono");
            Email = request.getParameter("email");
            Descripcion = request.getParameter("desc");
            Password = request.getParameter("passw");

            clsempresa obj = new clsempresa(ruc, NombreEmpresa, direccion, telefono, Email, Descripcion, Password);
            //out.print("<br> RUC : " + obj.getRuc() + "<br>NombreDeLaEmpresa : " + obj.getNombreEmpresa() + "<br>direc : " + obj.getDescripcion());

            boolean eject = obj.InsertarEmpresa(ruc, NombreEmpresa, direccion, telefono, Email, Descripcion, Password);
            if (eject = true) {
               // out.print("<br> Empresa Registrada Correctamente " + eject);
            } else {
               // out.print("<br>Error al Registrar Empresa " + eject);
            }
        %>
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
        <br>
        <br>
    <center>
        <h1>Oferta Empleo</h1>
        <br>
        <form action="Proceso_Empresa.jsp" method="post">

            <table>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">ruc</div>
                        <input type="text" class="form-control" id="ci" placeholder="RUC: #123456789001" name="ruc">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Cod_oferta</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: AKROSCORP" name="Cod_oferta">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Cargo</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: Ajavi" name="Cargo">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripcion</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: 022467315" name="Descripcion ">
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                
                

            </table>

            <button type="submit"  class="btn btn-primary btn-lg"> Crear Oferta Laboral </button><br>
           <img src="Imagenes/oferta.jpg" higth="300" width="300"/>
        </form>
    </center>
    </body>
</html>
