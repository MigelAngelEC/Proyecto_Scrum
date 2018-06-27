<%-- 
    Document   : Proceso_CB
    Created on : 26-jun-2018, 20:48:08
    Author     : EstIvonneGeovannaCam
--%>

<!DOCTYPE html>
<%@page import="Clases.clsCentroBecas"%>
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

        <title>Perfil Centro de Becas!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

        <%
            //Confirmacion de registro de centros de becas
            String codCB, NombreCB, direccionCB, telefonoCB, EmailCB, PasswordCB;

            codCB = request.getParameter("id");
            NombreCB = request.getParameter("nombre");
            direccionCB = request.getParameter("dir");
            telefonoCB = request.getParameter("tel");
            EmailCB = request.getParameter("email");
            PasswordCB = request.getParameter("pass");
            System.out.println(codCB + " " + NombreCB + " " + direccionCB + " " + telefonoCB + " " + EmailCB + " " + PasswordCB);

            clsCentroBecas objCb = new clsCentroBecas();
            // out.print("<br> COD : " + objCb.getCod_b()+ "<br>NombreDeLaEmpresa : " + objCb.getNombre_cb());

            boolean eject = objCb.InsertarCb(codCB, NombreCB, direccionCB, telefonoCB, EmailCB, PasswordCB);
            // out.print(" " +codCB+" "+" "+ NombreCB+" "+ direccionCB+" "+ telefonoCB+" " + EmailCB+" "+ PasswordCB);
            if (eject = true) {
                out.print("<br> Centro de Becas registrado correctamente " + eject);
            } else {
                out.print("<br>Error al Registrar Empresa " + eject);
            }

            boolean ejectAc = objCb.ActualizarCb(codCB, NombreCB, direccionCB, telefonoCB, EmailCB, PasswordCB);
            if (eject = true) {
                out.print("<br> <h2>Datos Correctamente Actualizados </h2>");
                out.print("<h3>&nbsp; &nbsp;Para Efectuar los cambios Cierre Sesión</h3>");
                out.print("<a  href=LogueoE.jsp class=btn btn-primary btn-lg> <h3><u>Cerrar Sesión</u></h3> </a><br>");
            } else {
                out.print("<br><h2>Error al Actualizar Datos de Empresa </h2>");
                out.print("<a  href=javascript:history.go(-1) class=btn btn-primary btn-lg> Cerrar Sesión </a><br>");
            }
        %>
    </head>

    <body background="Imagenes/wall3.jpg" onload="checkEdits(), checkEdits1(), checkEdits2()">

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
                        <li><a href="#">Ayuda</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>







    </body>
</html>
