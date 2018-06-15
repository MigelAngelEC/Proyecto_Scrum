<%-- 
    Document   : login
    Created on : 03-jun-2018, 12:20:33
    Author     : EstIvonneGeovannaCam
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
        <title>Login de candidatos</title>
    </head>
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


        <div class="row">
            <center>
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <h2 align="center">El futuro depende de lo que hagas hoy.!</h2>
                    <img src="Imagenes/loginUser.jpg" alt="" height="570" width="800" align="center" />  
                </div>
                <div class="col-sm-2"></div>
                <div class="col-sm-4" bordercolor="blue" >
                    <div class="panel panel-primary">
                        <center>
                            <h3 align="center">SOY CANDIDATO</h3>
                            <br/>

                            <form action="Proceso_Login.jsp" method="post">


                                <div class="input-group input-group-lg">
                                    <label for="exampleInputPassword1">Nickname</label>

                                    <input type="text" class="form-control" placeholder="Nickname" name="nick" aria-describedby="sizing-addon2">
                                </div>

                                <br/>
                                <div class="input-group input-group-lg">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Password" aria-describedby="sizing-addon2">
                                </div>
                                <br/>
                                <button type="submit" class="btn btn-outline-dark">Login</button>

                                <br/>
                                <br/>
                                <a href="#">Olvide mi contraseña..!</a>
                                <br/>
                                <a href="RegistrarUsuario.jsp">Registrarme</a>
                                <br/> <br/> <br/>

                                <img src="Imagenes/Users.png" alt="" height="250" width="250" align="center" />
                            </form>
                        </center>   

                    </div>
                </div>
            </center>
        </div>

    </body>
</html>
