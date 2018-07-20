<%-- 
    Document   : Proceso_Login
    Created on : 06-jun-2018, 22:59:17
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.clsInfoAcademica"%>
<%@page import="Clases.clsLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
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
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Mi Perfil Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.0&appId=151378954918283&autoLogAppEvents=1';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
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
    <body background="Imagenes/wall3.jpg" style="background-repeat: space" onload="checkEdits(), checkEdits1(), checkEdits2()">

        <%
            String nickname = request.getParameter("nick");
            String password = request.getParameter("pass");
            //out.println(nickname);
            //out.println(password);
            clsLogin log = new clsLogin();

            String correcto = log.autenticacion(nickname, password);

            //out.print(correcto);
            if (correcto.equals("true")) {
                HttpSession sess = request.getSession();
                // out.print(sess);
                //  out.print("log correcto");
            } else {
                // out.print("log incorrecto");
                response.sendRedirect("LogeoU.jsp?t=Usuario o Password Incorrectos");

            }

            clsInfoAcademica info = new clsInfoAcademica();
            List<String> lista1 = info.ConsultarDatosAcaInsti(nickname);
            List<String> lista2 = info.ConsultarDatosAcaEspecilidades(nickname);

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
                        <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                        <li><a href="Ayuda.jsp">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="col-sm-2">

            <div class="list-group">
                <a href="#" class="list-group-item active">
                    MENU
                </a>
                <form action="DatosInforUsuario.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Datos de Usuario <u>(Editar)</u></button>
                </form>
                <form action="DatosAcademicosUsuario.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Datos Academicos <u>(Agregar)</u></button>
                </form>
                <form action="DatosAcademicosReferencias.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Referencias Personales <u>(Agregar)</u></button>
                </form>
                <form action="DatosExperienciaLaboral.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Experiencia Laboral <u>(Agregar)</u></button>
                </form>
                <form action="MostrarOfertas.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Ofertas Laborales <u>(Aplicar)</u></button>
                </form>
                <form action="OfertasAplicadas.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Ofertas Aplicadas<u>(Editar)</u></button>
                </form>
                <form action="BecasDispon.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Becas Disponibles <u>(Aplicar)</u></button>
                </form>
                <form action="BecasAplicadas.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Becas Aplicadas<u>(Editar)</u></button>
                </form>
                <form action="StartUps.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Crear&Editar StartUP<u>(Editar)</u></button>
                </form>
                <form action="StartUpAdd.jsp" method="post">
                    <input type="text" name="nickn" value="<%out.println(nickname);%>" hidden="true" >
                    <button type="submit" class="list-group-item">Agregar Usuarios a StartUP<u>(Editar)</u></button>
                </form>

            </div>
        </div>
        <div class="col-sm-8">
            <div class="container">

                <div class="jumbotron">
                    <h2>Bienvenido <%  out.println(nickname);
                        %></h2>
                    <br>
                    <center>

                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <br>
                                    <img src="Imagenes/useru.png" data-holder-rendered="true" style="height: 200px; width: 70%; display: block;">
                                    <div class="caption">
                                        <h3>Mi Perfil !</h3>
                                        <p>  </p>
                                        <div id="edit" contenteditable="true" class="well" >
                                            Descripción de Mi Perfil</div>

                                        <input  class="btn btn-default btn-xs dropdown-toggle"  aria-haspopup="true" aria-expanded="false" type="button" value="Guardar" onclick="saveEdits()">

                                        <h6><div id="update"> Edita el texto y presiona en Guardar</div></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <br>
                                    <img src="Imagenes/enterprise.png" data-holder-rendered="true" style="height: 200px; width: 70%; display: block;"/>
                                    <div class="caption">
                                        <h3>Mis Estudios !</h3>
                                        <p>Instituciones</p>
                                        <p><% for (int i = 0; i < lista1.size(); i++) {
                                                out.print("<h5>" + lista1.get(i) + "</h5>");
                                            }%></p>
                                        <div id="edit1" contenteditable="true" class="well" >
                                            Descripción de Mis Estudios</div>

                                        <input  class="btn btn-default btn-xs dropdown-toggle"  aria-haspopup="true" aria-expanded="false" type="button" value="Guardar" onclick="saveEdits1()">

                                        <h6><div id="update1"> Edita el texto y presiona en Guardar</div></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <br>
                                    <img src="Imagenes/becas.png" data-holder-rendered="true" style="height: 200px; width: 70%; display: block;"/>
                                    <div class="caption">
                                        <h3>Mi Especialidad !</h3>
                                        <p><% for (int i = 0; i < lista2.size(); i++) {
                                                out.print("<h5>" + lista2.get(i) + "</h5>");
                                            }%></p>
                                        <div id="edit2" contenteditable="true" class="well" >
                                            Descripción de Mis Especialidades</div>

                                        <input  class="btn btn-default btn-xs dropdown-toggle"  aria-haspopup="true" aria-expanded="false" type="button" value="Guardar" onclick="saveEdits2()">

                                        <h6><div id="update2"> Edita el texto y presiona en Guardar</div></h6>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
            <center>
                <a target="_blank"><img alt="follow me on facebook" src="//login.create.net/images/icons/user/facebook_30x30.png" border=0></a>
                <h3>Empleos Quito Noticias</h3>
                <div class="jumbotron">
                    <div class="fb-page" data-href="https://www.facebook.com/Empleos-en-Quito-1430155270570625/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/Empleos-en-Quito-1430155270570625/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Empleos-en-Quito-1430155270570625/">Empleos en Quito</a></blockquote></div>
                </div>
            </center>
        </div>
    </body>
    <script type="text/javascript">
        function saveEdits() {

            //get the editable element
            var editElem = document.getElementById("edit");

            //get the edited element content
            var userVersion = editElem.innerHTML;

            //save the content to local storage
            localStorage.userEdits = userVersion;

            //write a confirmation to the user
            document.getElementById("update").innerHTML = "Guardado!";

        }
        function checkEdits() {

            //find out if the user has previously saved edits
            if (localStorage.userEdits != null)
                document.getElementById("edit").innerHTML = localStorage.userEdits;
        }
        function saveEdits1() {

            //get the editable element
            var editElem1 = document.getElementById("edit1");

            //get the edited element content
            var userVersion1 = editElem1.innerHTML;

            //save the content to local storage
            localStorage.userEdits1 = userVersion1;

            //write a confirmation to the user
            document.getElementById("update1").innerHTML = "Guardado!";

        }
        function checkEdits1() {

            //find out if the user has previously saved edits
            if (localStorage.userEdits1 != null)
                document.getElementById("edit1").innerHTML = localStorage.userEdits1;
        }
        function saveEdits2() {

            //get the editable element
            var editElem2 = document.getElementById("edit2");

            //get the edited element content
            var userVersion = editElem2.innerHTML;

            //save the content to local storage
            localStorage.userEdits2 = userVersion;

            //write a confirmation to the user
            document.getElementById("update2").innerHTML = "Guardado!";

        }
        function checkEdits2() {

            //find out if the user has previously saved edits
            if (localStorage.userEdits2 != null)
                document.getElementById("edit2").innerHTML = localStorage.userEdits2;
        }
    </script>
</html>
