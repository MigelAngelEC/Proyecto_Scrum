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
            String ci, direc, telefo, celu, name, apel;
            int year;
            ci = request.getParameter("cedula");
            year = Integer.parseInt(request.getParameter("edad"));
            direc = request.getParameter("direccion");
            telefo = request.getParameter("phone");
            celu = request.getParameter("celular");
            name = request.getParameter("name");
            apel = request.getParameter("lname");

            clsUsuario obj = new clsUsuario(ci, year, direc, telefo, celu, name, apel);
            out.print("<br> Cedula : " + obj.getCedula() + "<br>Nombre&APellido: " + obj.getNombre() + " " + obj.getApellido());

            boolean eject = obj.InsertarUsuario(ci, year, direc, telefo, celu, name, apel);
            if (eject = true) {
                out.print("<br>Inserccion Exitosa " + eject);
            } else {
                out.print("<br>Inserccion Exitosa " + eject);
            }
        %>
    </body>
</html>
