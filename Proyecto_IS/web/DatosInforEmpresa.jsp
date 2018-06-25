<%-- 
    Document   : Registro_Empresas
    Created on : 04/06/2018, 21:43:48
    Author     : rowel
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsempresa"%>
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
    <body background="Imagenes/wall3.jpg">
        <%
            String email_emp;
            List<String> lista;
            email_emp = request.getParameter("emaile");
            clsempresa obj = new clsempresa();
            lista = obj.ConsultarEmpresa(email_emp);
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
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(email_emp);%></i></a></p>
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <br>
        <br>
    <center>
        <h1>Registrar Empresa</h1>
        <br>
        <form action="ProcesarActualizarDatosEmpresa.jsp" method="post">

            <table>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">RUC</div>
                        <input type="text" class="form-control" id="ci" placeholder="RUC: #123456789001" name="ruc" value="<% out.print(lista.get(0)); %>" readonly  >
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Nombre de la Empresa</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: AKROSCORP" name="nempresa" value="<% out.print(lista.get(1)); %>" onClick="this.select();">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Direccion</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: Ajavi" name="direc" value="<% out.print(lista.get(2)); %>"onClick="this.select();" >
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Telefono</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej: 022467315" name="telefono" value="<% out.print(lista.get(3)); %>"onClick="this.select();" >
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Email</div>
                        <input type="text" class="form-control" id="ci" placeholder="ej:akroscgi@akros.com" name="email" value="<% out.print(lista.get(4)); %>"onClick="this.select();" >
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Password</div>
                        <input type="password" class="form-control" id="ci" placeholder="ej:AkrosC159" name="passw" value="<% out.print(lista.get(6)); %>"onClick="this.select();" >
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
                        <input type="text" class="form-control" id="txtSearch" placeholder="A que se dedica" name="desc" value="<% out.print(lista.get(5));%>"onClick="this.select();">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>

            </table>

            <button type="submit"  class="btn btn-primary btn-lg">Guardar Cambios </button>
            <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
            <img src="Imagenes/empresa.jpg" higth="300" width="300"/>
        </form>
    </center>
</body>
</html>
