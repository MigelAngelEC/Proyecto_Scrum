<%-- 
    Document   : LogueoE
    Created on : 14-jun-2018, 20:34:05
    Author     : EstIvonneGeovannaCam
--%>

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
        <title>Login Empresarial</title>
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
    <body background="Imagenes/wall3.jpg" style="background-repeat: space">
        <!-- BARRA DE NAVEGACION-->
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

        <!-- LOGIN DE EMPRESAS-->
        <div class="row">
            <center>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <h2 align="center">El éxito es simplemente la aplicación diaria de la disciplina!</h2>
                    <img src="Imagenes/empresas.jpg" alt="" height="570" width="750" align="center" />  
                </div>
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <div class="panel panel-success">
                        <center>
                            <h3 align="center">SOY EMPRESA</h3>
                            <br/>

                            <form action="ProcesoLog_Emp.jsp" method="get">


                                <div class="input-group input-group-lg">
                                    <label for="exampleInputPassword1">Correo Empresarial</label>

                                    <input type="text" class="form-control" placeholder="Correo Empresarial" name="correo_e" aria-describedby="sizing-addon2" onClick="this.select();" required>
                                </div>

                                <br/>
                                <div class="input-group input-group-lg">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="pass_e" name="pass_e" placeholder="Password" aria-describedby="sizing-addon2" onClick="this.select();" required maxlength="20">
                                </div>
                                <br>
                                <p
                                    value="
                                    <%
                                        String error = "";
                                        error = request.getParameter("t");
                                    %>
                                    " 
                                    ><font size="3" color="red"><%
                                        if (error == null) {

                                        } else {
                                            out.print("*" + error + "*");
                                        }

                                    %></font></p>
                                <button type="submit" class="btn btn-outline-dark">Login</button>

                                <br/>
                                <br/>

                                <br/>
                                <a href="Registro_Empresas.jsp">Registrarme</a>
                                <br/> <br/>

                                <img src="Imagenes/empresa.png" alt="" height="320" width="400" align="center" />
                            </form>
                        </center> 
                    </div> 
                </div>
            </center>  
        </div>

    </head>
</body>
</html>
