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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
</html>
