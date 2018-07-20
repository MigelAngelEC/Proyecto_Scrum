<%-- 
    Document   : OfertasEEdit
    Created on : 09/07/2018, 6:08:20
    Author     : migue
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsempresa"%>
<%@page import="Clases.clsOfertaEmpleo"%>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="icon" href="Imagenes/letterD.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Oferta Laboral</title>
    </head>     <style>
        body {text-align:center; padding:20px}
        input {
            min-width:200px!important;
            max-width:99.99%!important;
            transition: width 0.25s;
            text-align:center;
        }
    </style> <%
        String email_emp;
        email_emp = request.getParameter("emaile");
    %>
    <script>
        function myFunction() {
        <%
            if (email_emp == null) {
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
                        <p class="navbar-text ">Signed in as <a class="navbar-link"><i><%out.println(email_emp);%></i></a></p>
                        <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                        <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

    <center>
        <h1>Oferta Empleo Editar</h1>
        <%
            clsOfertaEmpleo oe = new clsOfertaEmpleo();
            clsempresa et = new clsempresa();
            List<String> lista = oe.ConsultarOferta(et.RucEnterprise(email_emp));
        %>
        <br>
        <form action="ProcesarOfertasEE.jsp" method="post">

            <table>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Cargo Empresarial</div>
                        <input type="text" class="form-control" id="cargo" placeholder="ej: Gerente" name="cargo"value="<%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(2));
                            }
                               %>">
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon">Descripcion</div>
                        <input type="text" class="form-control" id="desc"  placeholder="ej: Varias Habilidades" name="desc"value="<%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(3));
                            }
                               %>">

                    </div> </center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" >Tiempo Requerido</div>
                        <select class="form-control" id="time" name="time" value="<%
                            if (lista.isEmpty()) {
                                out.print("");
                            } else {
                                out.print(lista.get(5));
                            }
                                %>">
                            <option value="4 Horas">4 Horas o menos</option>
                            <option value="6 Horas">6 Horas</option>
                            <option value="8 Horas">8 Horas</option>
                            <option value="10 Horas">10 Horas</option>
                        </select>
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" >Experiencia Requerida</div>
                        <input  list="xp1" type="text" class="form-control" id="xp"  placeholder="ej: Ninguna" name="xp" required maxlength="20">
                        <datalist id="xp1"  name="xp1">
                            <option value="3 Meses">3 Meses o menos</option>
                            <option value="6 Meses">6 Meses</option>
                            <option value="9 Meses">9 Meses</option>
                            <option value="2 Años">2 Años</option>
                            <option value="5 Años">5 Años o más</option>
                        </datalist>
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
                <tr><td colspan="2">  <center>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" >Estado</div>
                        <input  list="state1" type="text" class="form-control" id="state"  placeholder="ej: Ninguna" name="state" required maxlength="20">
                        <datalist id="state1" name="state1">
                            <option value="Disponible">Disponible</option>
                            <option value="No Disponible">No Disponible</option>
                            <option value="No Disponible">Urgente</option>
                        </datalist>
                    </div></center>
                </td></tr>
                <tr><td> &nbsp;</td></tr>
            </table>
            <input type="text" name="emaile" value="<%out.println(email_emp);%>" hidden="true" >
            <input type="text" name="ruc" value="<%
                if (lista.isEmpty()) {
                    out.print("");
                } else {
                    out.print(lista.get(0));
                }
                   %>"  hidden="true" >
            <input type="text" name="cod" value="<%
                if (lista.isEmpty()) {
                    out.print("");
                } else {
                    out.print(lista.get(1));
                }
                   %>" hidden="true" >
            <button type="submit"  class="btn btn-primary btn-lg"> Actualizar Oferta Laboral </button>
            <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
            <br>
            <img src="Imagenes/oferta.jpg" higth="300" width="300"/>
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
</html>
