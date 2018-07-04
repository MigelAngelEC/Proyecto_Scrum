<%-- 
    Document   : Visualizar
    Created on : 03/07/2018, 22:11:59
    Author     : rowel
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ClsConexion"%>
<%@page import="Clases.clsempresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar</title>
    </head>
    <body>
        <select name="consulta" id="consulta" >
    
         </select>      
         <%
          
        
            String SQL = "select  from empresas ";
            ClsConexion con = new ClsConexion();
            ResultSet rs = con.Consultar(SQL);
            while (rs.next()) {
                %>
                
    <option><%=rs.getString(1)%></option>
                             
            <%
    }
           
        %>
                </body>
</html>
