<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Suscribete a Nuestro sitio Web</h1>        
<p>Introduce tu nombre y tu email para suscribirte a 
    nuestro sitio web y recibir notificaciones.</p>    

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">        
    <label class="pad_top">Nombre:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Apellidos:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="SUSCRIBIRSE" class="margin_left">
</form>
    
<c:import url="/includes/footer.jsp" />
