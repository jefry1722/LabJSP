<%-- 
    Document   : index
    Created on : 18/03/2021, 08:20:04 PM
    Author     : JEFRY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido, escriba su nombre y fecha de nacimiento</h1>
        <form name="student input form" action="response.jsp">
            <input type="text" name="name" value=""/><br>
            <input type="text" name="birthdate" value=""/><br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
