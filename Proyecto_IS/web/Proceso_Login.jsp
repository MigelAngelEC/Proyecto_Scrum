<%-- 
    Document   : Proceso_Login
    Created on : 06-jun-2018, 22:59:17
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String nickname=request.getParameter("nick");
        String password=request.getParameter("pass");
        out.println(nickname);
        out.println(password);
         clsLogin log=new clsLogin();
        
        String correcto = log.autenticacion(nickname, password);
        
        out.print(correcto);
        
        if (correcto.equals("true")){
            HttpSession sess=request.getSession();
            out.print(sess);
            out.print("log correcto");
        }else{
            response.sendRedirect("Inicio.html");
        }
        
    %>

    </body>
</html>
