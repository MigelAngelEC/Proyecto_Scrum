<%-- 
    Document   : Oferta_Empleo
    Created on : 13/06/2018, 21:07:28
    Author     : rowel
--%>

<%@page import="Clases.clsOfertaEmpleo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <!-- Latest compiled and minified CSS -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oferta_Empleo</title>
    </head>
     <%
            String ruc, Cod_Oferta, Cargo,  Descripcion ;

            ruc = request.getParameter("ruc");
            Cod_Oferta = request.getParameter("Cod_Oferta");
            Cargo = request.getParameter("Cargo");
            Descripcion = request.getParameter("Descripcion");
            
           

            clsOfertaEmpleo obj = new clsOfertaEmpleo(ruc, Cod_Oferta, Cargo, Descripcion);
            //out.print("<br> RUC : " + obj.getRuc() + "<br>NombreDeLaEmpresa : " + obj.getNombreEmpresa() + "<br>direc : " + obj.getDescripcion());

            boolean eject = obj.InsertarEmpresa(ruc, Cod_Oferta, Cargo, Descripcion);
            if (eject = true) {
               // out.print("<br> Empresa Registrada Correctamente " + eject);
            } else {
               // out.print("<br>Error al Registrar Empresa " + eject);
            }
        %>
</body>
</html>
