<%-- 
    Document   : ProcesarDatosAcademicos
    Created on : 15/06/2018, 19:28:47
    Author     : migue
--%>

<%@page import="Clases.clsInfoAcademica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesando</title>
    </head>
    <body>
        <%
            String Instituto, Titulo, Nivel, ci, NameRef1, CargoRef1, Telfref1, parentescoref1, nameref2, cargoref2, telfref2, parentescoref2, espe;
            Instituto = request.getParameter("Instituto");
            Titulo = request.getParameter("titulo");
            Nivel = request.getParameter("Nivel");
            espe = request.getParameter("espe");
            ci = request.getParameter("ciref");
            NameRef1 = request.getParameter("nameref");
            CargoRef1 = request.getParameter("cargoref1");
            Telfref1 = request.getParameter("telfref1");
            parentescoref1 = request.getParameter("parentescoref1");
            nameref2 = request.getParameter("nameref2");
            cargoref2 = request.getParameter("cargoref2");
            telfref2 = request.getParameter("telfref2");
            parentescoref2 = request.getParameter("parentescoref2");


        %>
    </body>
</html>
