# PWEB162-S07

###Java Server Pages
##simplemente html con java

JSP es una tecnología de lado de servidor que ayuda a crear una página web dinámica utilizando Java como lenguaje de programación.

###Ejemplo JSP

```
<%-- Comentario JSP--%>
<html>
<head>
	<title>MESSAGE</title>
</head>
<body>
	<%out.print("Hola Mundo");%>
</body>
</html>
```

###__JSP Declaration Tags__<br>_simplemente html con java_

La etiqueta de declaración JSP es un bloque de código java para la declaración variables y metodos a nivel de clase.  Lo que sea colocado dentro de estas etiquetas es inicializado durante la fase de inicialización JSP y tiene ámbito de clase.

__Sintaxis__

<%!  Declaration %>
Example 1: Variables declaration

In this example we have declared two variables inside declaration tag and displayed them on client using expression tag.

__Ejemplo__ 
```
<html> 
<head>
	<title>JSP Declaration Tag</title>
</head>
<body> 
	<%! String nombre="John"; %> 
	<%! int edad=26; %> 
	<%= "Nombre: " + nombre %><br>
	<%= "Edad: "+ edad %> 
</body> 
</html>
```
__Salida___
[TODO]

__Ejemplo__

```
<html> 
<head>
	<title>JSP Declaration Tag</title>
</head>
<body> 
	 <%! 
		 int suma(int num1, int num2, int num3){ 
			 return num1+num2+num3; 
		 } 
	 %> 
	 <%= "Resultado: " + suma(10, 40, 50) %> 
</body> 
</html>
```
Output:

###__JSP Expression Tags__<br>escribe valores en la salida del cliente 

Expression tag evaluates the expression placed in it, converts the result into String and send the result back to the client through response object.
Las etiquetas de expresión evalúa la expresión ingresada, transforma estos datos en una cadena y envía su resultado al cliente a través del objeto 'response'.

__Sintaxis:__

```
<%= expression %>
```

__Ejemplo 1__

index.jsp
```
<html>
<head>
	<title>JSP Expression Tag</title>
</head>
<body>
	<%= 2+4*5 %>
</body>
</html>
```

__Salida__

__Ejemplo 2__

index.jsp
```
<html>
<head>
   <title>JSP Expression Tag</title>
</head>
<body>
	<%
		int a=10;
		int b=20;
		int c=30;
	%>
	<%= a+b+c %>
</body>
</html>
```

Salida:

__Ejemplo 3__

index.jsp

```
<html>
<head>
	<title>JSP Expression Tag<title>
</head>
<body>
	<% application.setAttribute("MiNombre", "John"); %>
	<a href="display.jsp">Click aquí para mostrar.</a>
</body>
</html>
```

display.jsp

```
<html>
<head>
	<title>JSP Expression Tag</title>
</head>
<body>
	<%="Esta es una cadena" %><br>
	<%= application.getAttribute("MiNombre") %>
</body>
</html>
```
__Salida:__


###__JSP Scriptlets__<br>código java escrito entre símbolos <% ... %>

Los 'Scriptlet' son bloques de codigo en Java, que se ejecutan cada vez que se llama a una pagina JSP.

__Sintaxis__

```
<% codigo java ejecutable %>
```

__Ejemplo__

```
<html>
<head>
	<title>JSP Scriptlets</title>
</head>
<body>
	<%  
	    String firstName = "John";
	    String lastName = "Doe";
	%>
	<h1>"Bienvenido"</h1><br>
	<%= firstName + LastName %>
</body>
</html>
```

__Ejemplo__

```
<html>
<head>
	<title>JSP Scriptlets</title>
</head>
<body>
	<%  
		java.util.Calendar now = java.util.Calendar.getInstance();
		int hora = now.get(java.util.Calendar.HOUR_OF_DAY);	    
	%>
	<h1>
		<% if ( hora >= 6 && hora <= 12 ){ %>
			¡Buenos Días! 
		<% } else  if( hora > 20 || hora < 6 ){ %>
			¡Buenos Noches! 
		<% } else { %>
			¡Buenos Tardes! 
		<% }; %>			
	</h1>
</body>
</html>
```

###__JSP Directives Tag__<br>instrucciones relacionadas al procesamiento de la pagina

Las directivas en JSP permiten establecer instrucciones al motor del servidor JSP.

Syntax of Directives:

``` 
<%@ directive_name [attribute name=“value” attribute name=“value” ...]%>
```
 
Hay tres tipos de directivas en JSP:

1) Page Directive
2) Include Directive
3) TagLib Directive

###__JavaBean__<br>clase java con propiedades, getters y setters

Un 'JavaBean' o 'bean' es una clase de java que cumple con ciertas normas relacionadas a su implementación.

\- Provee un constructor sin argumentos.
\- Provee métodos ‘get’ y ‘set’ para todos sus variables de instancia privadas que siguen el estándar nomenclatura de Java. 
\- Implementa las interfaces 'Serializable' y 'Externalizable'.


User.java

```
package pweb.business;
import java.io.Serializable;

public class User implements Serializable {

	private String firstName;
    private String lastName;
    private String email;

    public User() {
        firstName = "";
        lastName = "";
        email = "";
    }

    public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

```


###__JSP Expression Language__<br>una manera simple de acceder a datos de aplicaciones

Expression Lenguage (EL) tiene como propósito principal el para simplificar el proceso de acceso a las propiedades almacenadas en 'JavaBeans' y objetos implícitos.

'EL' incluye también operadores aritméticos, relacionales y lógicos.

__Sintaxis__

${expression}

todo lo que esté dentro de llaves es evaluado en tiempo de ejecución y enviado a la secuencia de salida.

__Ejemplo 1__

index.html
```
<html>
<head>
	<title>Ejemplo Expression Language</title>
</head>
<body> 
	${1<2}
	${1+2+3}
</body> 
</html>
```

Salida: 
[TODO]

__Ejemplo 2__

index.jsp
```
<html> 
<head>
 <title>Ejemplo EL</title>
</head>
<body> 
	<form action="display.jsp"> 
		Nombre: <input type="text" name="firstName" /><br>
		Apellidos: <input type="text" name="lastName" /><br>
		<input type="submit" value="¡Enviar!"/> 
	</form> 
</body> 
</html>
```

display.jsp

```
<html>
<head>
<title>Ejemplo EL</title>
</head>
<body>
	Nombre: ${param.firstName}<br>
	Apellidos: ${param.lastName}
</body>
</html>
```
Salida:
[TODO]




Un 'JavaBean' o 'bean' es una clase de java que cumple con ciertas normas relacionadas a su implementación.

\- Provee un constructor sin argumentos.
\- Provee métodos ‘get’ y ‘set’ para todos sus variables de instancia privadas que siguen el estándar nomenclatura de Java.
\- Implementa las interfaces 'Serializable' y 'Externalizable'.
