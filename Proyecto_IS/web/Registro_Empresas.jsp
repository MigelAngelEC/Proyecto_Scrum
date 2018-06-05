<%-- 
    Document   : Registro_Empresas
    Created on : 04/06/2018, 21:43:48
    Author     : rowel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar Empresa</h1>
        <form action="Proceso_Usuario.jsp" method="post">
            Cod Empresa <input type="number" name="cod_empresa"><br>
            Cod_Perfil <input type="number" name="cod_Perfil"><br>
            Nombre <input type="text" name="Nombre"><br>
            Telefonos <input type="number" name="Telefono"><br>
            Email <input type="text" name="Email"><br>
           
           
            <button type="submit"> Enviar </button><br>
        </form>

    </body>
</html>
