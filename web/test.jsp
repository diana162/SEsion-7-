<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" pweb.business.User" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Test</title>
    </head>    
    <body>        
        <%-- Comentario JSP--%>
        <% out.print("Hola Mundo");%>
        <%! String nombre="Jhon"; %>
        <%!
            int suma(int num1, int num2, int num3){
                return num1+num2+num3;
                
            }
         %>
         <br>
         <%= "Nombre:" + nombre %><br>
         
         <%= "Resultado:"+suma(10,40,50) %><br>
         
         
         <%! int numero=10; int numero2=20; %>
         <%= numero+ numero2+3 %>
         
         
         <br><br>
         <% application.setAttribute("MiNombre", "Jhon"); %>
         <a href="displays.jsp"> Click aqui para mostrar.</a>

         
         <br>
         
         <%@include  file="hola.jsp" %>
         <br>
         
         <% 
         
         String firtsName="jhon";
         String lastName="Doe";
         String email="jhon.doe@domain.com";
         User user = new User(firtsName, lastName, email);
         
         %>
         
         <h1>Hola <%= user.getFirstName()%></h1> <h1><%= user.getLastName()%></h1>          
             <h1>Su Correo es: <%= user.getEmail()%></h1>
                 
             <br>
             <br>
             <br>
             
           <%
              java.util.Calendar now = java.util.Calendar.getInstance();
              int hora = now.get(java.util.Calendar.HOUR_OF_DAY);
              %>
           <h1>
              <% if ( hora >= 6 && hora <= 12 ){ %>
              ¡Buenos Días!
              <% } else if( hora > 20 || hora < 6 ){ %>
              ¡Buenos Noches!
              <% } else { %>
              ¡Buenos Tardes!
              <% }; %>
           </h1>
             
           <br>
           <br>
           
           <%= 1<2 %>
           <%= 1+2+3 %>
           <br>
           
           ${1<2}
           ${1+2+3}
           
           <br>
           <br>
           
           
             <form action="displays.jsp">
             Nombre: <input type="text" name="firstName" /><br>
             Apellidos: <input type="text" name="lastName" /><br>
             <input type="submit" value="¡Enviar!"/>
             </form>

           
           
    </body>
</html>

    