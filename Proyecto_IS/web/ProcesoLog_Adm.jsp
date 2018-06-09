<%-- 
    Document   : ProcesoLog_Adm
    Created on : 08-jun-2018, 19:34:21
    Author     : EstIvonneGeovannaCam
--%>

<%@page import="Clases.clsLoginAdmn"%>
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
        String nickname=request.getParameter("nick");
        String password=request.getParameter("pass");
        out.println(nickname);
        out.println(password);
        clsLoginAdmn adm= new clsLoginAdmn();
        
        String correcto_adm = adm.autenticacion_adm(nickname,password);
        
        out.print(correcto_adm);
        System.out.println(correcto_adm);
        
        if (correcto_adm.equals("true")){
            HttpSession sess=request.getSession();
            out.print(sess);
            out.print("login administrador correcto");
        }else{
            out.print(correcto_adm);
        }
        
    %>
    </body>
</html>
