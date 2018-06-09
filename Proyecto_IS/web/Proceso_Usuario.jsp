<%-- 
    Document   : Proceso_Usuario
    Created on : 03/06/2018, 15:42:32
    Author     : migue
--%>

<%@page import="Clases.clsUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesando</title>
    </head>
    <body>
        <%
            String ci, direc, telefo, celu, name, apel, nickn, mail, pass;

            ci = request.getParameter("cedula");
            nickn = request.getParameter("nickn");
            pass = request.getParameter("passw");
            name = request.getParameter("name");
            apel = request.getParameter("lname");
            mail = request.getParameter("email");
            direc = request.getParameter("direc");
            telefo = request.getParameter("telf");
            celu = request.getParameter("celu");

            clsUsuario obj = new clsUsuario(ci, nickn, pass, name, apel, mail, direc, telefo, celu);
            out.print("<br> Cedula : " + obj.getCedula() + "<br>Nombre&APellido: " + obj.getNombre() + " " + obj.getApellido());

            boolean eject = obj.InsertarUsuario(ci, nickn, pass, name, apel, mail, direc, telefo, celu);
            if (eject = true) {
                out.print("<br>Usuario Registrado " + eject);
            } else {
                out.print("<br>Fallo al Registrar " + eject);
            }
        %>
    </body>
</html>
