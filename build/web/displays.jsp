<%-- 
    Document   : displays.jsp
    Created on : 26/09/2016, 12:53:39 PM
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%="esta es una cadena" %><br>
        <%= application.getAttribute("MiNombre") %>
        
        <br>
      
        <br>
        Nombre: ${param.firtName}<br>
        Apellidos: ${param.lastName}<br>
                
        
    </body>
</html>
