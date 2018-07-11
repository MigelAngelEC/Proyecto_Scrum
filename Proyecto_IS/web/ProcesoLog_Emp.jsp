<%-- 
    Document   : ProcesoLog_Emp
    Created on : 08-jun-2018, 12:46:45
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsEmpresaLog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Mi Perfil de Empresa</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function saveEdits4() {

//get the editable element
                var editElem4 = document.getElementById("edit4");

//get the edited element content
                var userVersion4 = editElem4.innerHTML;

//save the content to local storage
                localStorage.userEdits4 = userVersion4;

//write a confirmation to the user
                document.getElementById("update4").innerHTML = "Guardado!";

            }
            function checkEdits4() {

//find out if the user has previously saved edits
                if (localStorage.userEdits4 != null)
                    document.getElementById("edit4").innerHTML = localStorage.userEdits4;
            }
            function saveEdits5() {

//get the editable element
                var editElem5 = document.getElementById("edit5");

//get the edited element content
                var userVersion5 = editElem5.innerHTML;

//save the content to local storage
                localStorage.userEdits5 = userVersion5;

//write a confirmation to the user
                document.getElementById("update5").innerHTML = "Guardado!";

            }
            function checkEdits5() {

//find out if the user has previously saved edits
                if (localStorage.userEdits5 != null)
                    document.getElementById("edit5").innerHTML = localStorage.userEdits5;
            }

        </script>
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
</head>
<body background="Imagenes/wall3.jpg" style="background-repeat: space"onload="checkEdits4(), checkEdits5()">

    <%
        //Validacion de login empresarial
        String email_emp = request.getParameter("correo_e");
        String password_e = request.getParameter("pass_e");
        //out.println(email_emp);
        //out.println(password_e);
        //System.out.println(email_emp + " " + password_e);
        clsEmpresaLog emp = new clsEmpresaLog();

        String correcto_log = emp.autenticacion_emp(email_emp, password_e);

        //out.print(correcto_log);
        // System.out.println(correcto_log);
        if (correcto_log.equals("true")) {
            HttpSession sess = request.getSession();
            // out.print(sess);
            // out.print("login empresarial correcto");
        } else {
            response.sendRedirect("LogueoE.jsp?t=Usuario o Password Incorrectos");
            out.print("login empresarial correcto");

        }

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
                     <p class="navbar-text ">  <a class="navbar-link" href="Inicio.html"><i>Cerrar Sesión</i></a></p>
                    <li><a href="#">Ayuda</a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav><!-- /.container-fluid -->

    <div class="col-sm-2">

        <div class="list-group">
            <a href="#" class="list-group-item active">
                MENU
            </a>
            <form action="DatosOfertaLaboral.jsp" method="post">
                <input type="text" name="emaile" value="<%out.println(email_emp);%>" hidden="true" >
                <button type="submit" class="list-group-item">Crear Oferta Laboral</button>
            </form>
            <form action="DatosInforEmpresa.jsp" method="post">
                <input type="text" name="emaile" value="<%out.println(email_emp);%>" hidden="true" >
                <button type="submit" class="list-group-item">Datos de Mi Empresa <u>(Editar)</u></button>
            </form>
            <form action="MostrarOfertasE.jsp" method="post">
                <input type="text" name="emaile" value="<%out.println(email_emp);%>" hidden="true" >
                <button type="submit" class="list-group-item">Mis Ofertas Laborales <u>(Editar)</u></button>
            </form>

        </div>
    </div>
    <div class="col-sm-8">
        <div class="container">
            <div class="jumbotron">
                <h2>Bievenido <%  out.println(email_emp);
                    %></h2>
                <br>
                <center>


                </center>
                <br>
                <center>

                    <div class="row">

                        <div class="col-sm- col-md-4">
                            <div class="thumbnail">
                                <br>
                                <img src="Imagenes/enterprise1.png" data-holder-rendered="true" style="height: 200px; width: 70%; display: block;">
                                <div class="caption">
                                    <h3>Mi Empresa !</h3>
                                    <p> </p>
                                    <div id="edit4" contenteditable="true" class="well" >
                                        Here is the element's original contentaa</div>

                                    <input  class="btn btn-default btn-xs dropdown-toggle"  aria-haspopup="true" aria-expanded="false" type="button" value="Guardar" onclick="saveEdits4()">

                                    <h6><div id="update4"> Edita el texto y presiona en Guardar</div></h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <br>
                                <img src="Imagenes/oferts.jpg" data-holder-rendered="true" style="height: 200px; width: 70%; display: block;"/>
                                <div class="caption">
                                    <h3>Mis Ofertas !</h3>
                                    <p></p>
                                    <div id="edit5" contenteditable="true" class="well" >
                                        Here is the element's original contentaa</div>

                                    <input  class="btn btn-default btn-xs dropdown-toggle"  aria-haspopup="true" aria-expanded="false" type="button" value="Guardar" onclick="saveEdits5()">

                                    <h6><div id="update5"> Edita el texto y presiona en Guardar</div></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </center>
            </div>
        </div>
    </div>
    <div class="col-sm-2">
        <a class="twitter-timeline" data-lang="es" data-width="250" data-dnt="true" data-link-color="#2B7BB9" href="https://twitter.com/Socioempleo_ec" data-tweet-limit="2">Tweets by elcomerciocom</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
</body >
</html>
