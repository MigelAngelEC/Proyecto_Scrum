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
            String ruc, NombreEmpresa, telefono, direccion, Descripcion,Email,Password;
           
            ruc = request.getParameter("ruc");
            NombreEmpresa = request.getParameter("nempresa");
            direccion = request.getParameter("direc");
            telefono = request.getParameter("telefono");
            Email = request.getParameter("email");
            Descripcion = request.getParameter("desc");
            Password= request.getParameter("passw");
            

            clsempresa obj = new clsempresa(ruc, NombreEmpresa, direccion, telefono, Email, Descripcion, Password);
            out.print("<br> RUC : " + obj.getRuc()+ "<br>NombreDeLaEmpresa : " + obj.getNombreEmpresa()+ "<br>direc : " + obj.getDescripcion());

            boolean eject = obj.InsertarUsuario(ruc, NombreEmpresa,  direccion, telefono, Email, Descripcion, Password);
            if (eject = true) {
                out.print("<br>Inserccion Exitosa " + eject);
            } else {
                out.print("<br>Inserccion no Exitosa " + eject);
            }
        %>
    </body>
</html>
