<%-- 
    Document   : Proceso_Empresa
    Created on : 07/06/2018, 19:09:46
    Author     : rowel
--%>
<%@page import="Clases.clsempresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String ruc, nombreempresa, telefono, direccion, desc,email;
            int year;
            ruc = request.getParameter("ruc");
            nombreempresa = (request.getParameter("nempresa"));
            direccion = request.getParameter("direc");
            telefono = request.getParameter("telefono");
            email = request.getParameter("email");
            desc = request.getParameter("desc");
            

            clsempresa obj = new clsempresa(ruc,nombreempresa,telefono,direccion,desc,email);
            out.print("<br> RUC : " + obj.getRuc()+ "<br>NombreDeLaEmpresa : " + obj.getNombreEmpresa());

            boolean eject = obj.InsertarUsuario(ruc, nombreempresa, telefono, direccion, desc, email);
            if (eject = true) {
                out.print("<br>Inserccion Exitosa " + eject);
            } else {
                out.print("<br>Inserccion Exitosa " + eject);
            }
        %>
    </body>
</html>
