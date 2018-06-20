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
       <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    </head>
    <body>
         <%
             //Validacion de login empresarial
        String email_emp=request.getParameter("correo_e");
        String password_e=request.getParameter("pass_e");
        out.println(email_emp);
        out.println(password_e);
        System.out.println(email_emp+" "+ password_e);
        clsEmpresaLog emp=new clsEmpresaLog();
        
        String correcto_log = emp.autenticacion_emp(email_emp, password_e);
        
        out.print(correcto_log);
        System.out.println(correcto_log);
        
        if (correcto_log.equals("true")){
            HttpSession sess=request.getSession();
            out.print(sess);
            out.print("login empresarial correcto");
        }else{
            out.print(correcto_log);
        }
        
    %>
    </body>
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

     <br>
        <br>
        <div class="container">
            <div class="jumbotron">
                <h2>Bievenido <%  out.println(email_emp);
                    %></h2>
                <br>
                <center><p>Menu</p></center>
                <br>
                <center>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <form action="DatosOfertaLaboral.jsp" method="post">
                            <input type="hidden" name="nick" value="<%out.println(email_emp);%>" >
                            <button type="submit" class="btn btn-secondary">Crear Oferta Laboral</button>
                        </form>
                        <br>
                        <form>
                        <button type="button" class="btn btn-secondary">Datos de mi Empresa</button>
                         </form>
                        <br>
                        <form>
                        <button type="button" class="btn btn-secondary">Ofertas Aplicadas por Usuarios</button>
                        </form>
                    </div>
                </center>
            </div>
        </div>
</html>
