<%-- 
    Document   : BecasEdit
    Created on : Jul 16, 2018, 12:30:37 PM
    Author     : Miguel Angel
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsCentroBecas"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
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
        <title>Centro de Becas</title>
        <link rel="icon" href="Imagenes/letterD.png">
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
    <%
        String emailcb = request.getParameter("emailcb");
    %>
    <script>
        function myFunction() {
        <%
            if (emailcb == null) {
        %>
            alert("Sesión no Iniciada , Se lo Redirigira al Incio");
            window.setTimeout('window.location="Inicio.html"; ', 200);
        <% }
        %>
        }
    </script>
</head>
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
                    <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(emailcb);%></i></a></p>
                    <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                    <li><a href="Ayuda.jsp">Ayuda</a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <form action="BecasEditUpdate.jsp" method="post">
        <center>
            <h2> Editar Beca</h2>
            <%
                clsCentroBecas cls = new clsCentroBecas();
                String codeCB, codeBeca;
                codeCB = request.getParameter("codcbeca");
                codeBeca = request.getParameter("codobeca");
                List<String> lista = cls.ConsultarBeca(codeCB, codeBeca);
            %>
            <br>
            <table>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripción Beca</div>
                        <input type="text" class="form-control" id="descbeca" placeholder=" Curso de Excel" name="descbeca" required maxlength="100"value="<%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(0).trim());
                            }
                               %>">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2"><center>  
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Fecha de Inicio</div>
                        <%
                            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("YYYY-MM-dd");
                            LocalDateTime now = LocalDateTime.now();
                        %>
                        <input type="date"  min="<%out.print(dtf.format(now).trim());%>" max="2020-12-31" class="form-control" id="finicio" placeholder="" name="finicio"required value=" <%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(1).trim());
                            }
                               %>">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Fecha de Finalización </div>
                        <input type="date"  min="<%out.print(dtf.format(now).trim());%>" max="2020-12-31"  class="form-control" id="ffin" placeholder="ej: Mispar159357" name="ffin"required value="  <%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(2).trim());
                            }
                               %>">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Horario</div>
                        <input type="time" value="00:00:00" max="22:30:00" min="09:00:00" class="form-control" id="horario" name="horario" placeholder="" required value=" <%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(3).trim());
                            }
                               %>" >
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" >Estado de la Beca</div>
                        <input  list="state1" type="text" class="form-control" id="state"  placeholder="ej: Ninguna" name="state" required maxlength="20" onkeypress='return validaLetras(event)' value=" <%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(4).trim());
                            }
                                %>">
                        <datalist id="state1" name="state1">
                            <option value="Disponible">Disponible</option>
                            <option value="No Disponible">Urgente</option>
                        </datalist>
                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>

            </table>
        </center>
        <input type="text" name="emailcb" value="<%out.println(emailcb);%>" hidden="true" >
        <input type="text" name="codeCB" value="<%out.println(codeCB);%>" hidden="true" >
        <input type="text" name="codeBeca" value="<%out.println(codeBeca);%>" hidden="true" >
        <button type="submit" class="btn btn-primary btn-lg">Actualizar  </button>
        <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
    </form>
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
</html>
