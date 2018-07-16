<%-- 
    Document   : DatosOfertaLaboral
    Created on : 19/06/2018, 22:50:51
    Author     : migue
--%>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="Imagenes/letterD.png">
        <title>Oferta Laboral</title>
    </head>    
    <style>
    body {text-align:center; padding:20px}
    input {
        min-width:200px!important;
        max-width:99.99%!important;
        transition: width 0.25s;
        text-align:center;
    }
</style><%
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
        <div class="row">
            <div class="col-sm-3">
                <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                    <img src="https://dvz3vrza543jw.cloudfront.net/assets/marketing-website/guides/recruiting/closing-the-deal-ff1c3caaa83d7d044f5f5845fc6824f2.png" width="450"/></center>
             
            </div>
            <div class="col-sm-6">
                <h1>Oferta Empleo</h1>
                <br>
                <form action="Oferta_Empleo.jsp" method="post">

                    <table>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2">  <center>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Cargo Empresarial</div>
                                <input type="text" class="form-control" id="cargo" placeholder="ej: Gerente" name="cargo">
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2">  <center>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">Descripcion</div>
                                <input type="text" class="form-control" id="desc"  placeholder="ej: Varias Habilidades" name="desc">

                            </div> </center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>
                        <tr><td colspan="2">  <center>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" >Tiempo Requerido</div>
                                <select class="form-control" id="time" name="time" >
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
                                <select class="form-control" id="xp" name="xp" >
                                    <option value="3 Meses">3 Meses o menos</option>
                                    <option value="6 Meses">6 Meses</option>
                                    <option value="9 Meses">9 Meses</option>
                                    <option value="2 Años">2 Años</option>
                                    <option value="5 Años">5 Años o más</option>
                                </select>
                            </div></center>
                        </td></tr>
                        <tr><td> &nbsp;</td></tr>
                    </table>
                    </table>
                    <input type="text" name="emaile" value="<%out.println(email_emp);%>" hidden="true" >
                    <button type="submit"  class="btn btn-primary btn-lg"> Crear Oferta Laboral </button>
                    <a  href="javascript:history.go(-1)" class="btn btn-primary btn-lg"> Cancelar </a><br>
                    <br>
                    <img src="Imagenes/oferta.jpg" higth="300" width="300"/>
                </form>
            </div>
            <div class="col-sm-3">
               
            </div>
        </div>
    </center>
</body>
</html>
