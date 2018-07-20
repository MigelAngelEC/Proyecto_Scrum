<%-- 
    Document   : StartUps
    Created on : 26/06/2018, 21:30:46
    Author     : rowel
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsUsuario"%>
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
        <link rel="icon" href="Imagenes/letterD.png">
        <title>StarUps</title>
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
                        <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <br>
        <br>
    <center>
        <%  int start = 0;
            clsUsuario us = new clsUsuario();
            start = us.StartUPUser(nickname);
            if (start == 0) {
        %>
        <div class="row">
            <div class="col-sm-3">
                <img src="https://static1.squarespace.com/static/59a9be6cf14aa167e7420741/t/5a556e5f53450a0fe1ad1969/1515548258649/startup.png?format=500w" alt="" width="350"/>
            </div>
            <div class="col-sm-6">
                <h1>Registrar Mi StartUp</h1>
                <form action="StartUpsReg.jsp" method="post">

                    <table>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2"><center>  
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Nombre StartUP</div>
                                <input type="text" class="form-control"id="namest" placeholder="ej: AKROSCORP" name="namest" maxlength="50">
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2">  <center>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Descripción StartUP</div>
                                <input type="text" class="form-control"id="descst" placeholder="A que se dedica" name="descst" maxlength="100">
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>

                    </table>
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit"  class="btn btn-primary btn-lg"> Crear StartUP </button>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                    <img src="Imagenes/StarUps.png" higth="600" width="600"/>
                </form>
            </div>
            <div class="col-sm-3">

            </div>
        </div>
        <%
        } else {
            clsUsuario cs = new clsUsuario();
            List<String> vec = cs.StartUP(nickname);
        %><h1>Editar Mi StartUp</h1>
        <div class="row">
            <div class="col-sm-3">
                <img src="https://static1.squarespace.com/static/59a9be6cf14aa167e7420741/t/5a556e5f53450a0fe1ad1969/1515548258649/startup.png?format=500w" alt="" width="350"/>    
            </div>
            <div class="col-sm-6">
                <form action="StartUpdate.jsp" method="post">

                    <table>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2"><center>  
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Nombre StartUP</div>
                                <input type="text" class="form-control" value="<%
                                    if (vec.isEmpty()) {
                                        out.print("");
                                    } else {
                                        out.print(vec.get(1).trim());
                                    }
                                       %>"id="namest" placeholder="ej: AKROSCORP" name="namest">
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2">  <center>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Descripción StartUP</div>
                                <input type="text" class="form-control" value="<%
                                    if (vec.isEmpty()) {
                                        out.print("");
                                    } else {
                                        out.print(vec.get(2).trim());
                                    }
                                       %>" id="descst" placeholder="A que se dedica" name="descst">
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>

                    </table>
                    <input type="text" name="codUp" value="<%out.println(vec.get(0));%>" hidden="true" >
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit"  class="btn btn-primary btn-lg"> Actualizar Startup </button>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                    <img src="https://www.claritaz.com/img/174319543_edit-1.png" higth="600" width="600"/>
                </form>
            </div>
            <div class="col-sm-3">
                <div class="list-group"> <a href="#" class="list-group-item active"> 
                        <h4 class="list-group-item-heading">Necesitas Ayuda?</h4> 
                        <p class="list-group-item-text"></p> </a> 
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">StartUp</h4> 
                        <p class="list-group-item-text">Edita tú StartUp, su nombre y descripción a que se dedicara la misma.</p> </a>
                    <a href="#" class="list-group-item"> <h4 class="list-group-item-heading">Datos</h4> 
                        <p class="list-group-item-text">La Descripción de tu StartUp puede contener hasta un máximo de 100 palabras .</p> </a> </div>

            </div>
        </div>
        <%
            }
        %>


        <br>

    </center>
    <script>
        function resizable(el, factor) {
            var int = Number(factor) || 7.7;
            function resize() {
                el.style.width = ((el.value.length + 1) * int) + 'px'
            }
            var e = 'keyup,keypress,focus,blur,change'.split(',');
            for (var i in e)
                el.addEventListener(e[i], resize, false);
            resize();
        }
        resizable(document.getElementById('namest'), 7);
        resizable(document.getElementById('descst'), 7);
    </script>
</body>
</html>
