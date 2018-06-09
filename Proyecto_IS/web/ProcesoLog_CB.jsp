<%-- 
    Document   : ProcesoLos_CB
    Created on : 08-jun-2018, 20:05:30
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsCentroBecas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
             //Validacion de login empresarial
        String email_cb=request.getParameter("correo_cb");
        String password_cb=request.getParameter("pass_cb");
        out.println(email_cb);
        out.println(password_cb);
        clsCentroBecas cb=new clsCentroBecas();
        
        String correcto_cb = cb.autenticacion_cb(email_cb, password_cb);
        
        out.print(correcto_cb);
        System.out.println(correcto_cb);
        
        if (correcto_cb.equals("true")){
            HttpSession sess=request.getSession();
            out.print(sess);
            out.print("login centro de becas correcto");
        }else{
            out.print(correcto_cb);
            response.sendRedirect("Inicio.html");
        }
        
    %>
    </body>
</html>
