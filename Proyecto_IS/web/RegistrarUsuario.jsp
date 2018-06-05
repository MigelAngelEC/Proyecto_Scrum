<%-- 
    Document   : RegistrarUsuario
    Created on : 03/06/2018, 15:42:17
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body>
        <h1>Registrar Usuario</h1>
        <form action="Proceso_Usuario.jsp" method="post">
            Cedula de Identidad <input type="text" name="cedula"><br>
            Edad <input type="number" name="edad"><br>
            Dirección <input type="text" name="direccion"><br>
            Telefono Fijo <input type="text" name="phone"><br>
            Telefono Celular <input type="text" name="celular"><br>
            Nombres <input type="text" name="name"><br>
            Apellidos <input type="text" name="lname"><br>
            <button type="submit"> Enviar </button><br>
        </form>
    </body>
</html>
