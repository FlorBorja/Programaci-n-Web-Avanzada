<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Menú</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<h1>Bienvenido 
		<%
			String name=(String)session.getAttribute("user");
			out.println(""+name);
		%>
		</h1>
		<table>
			<tr>	
				<th><a href="Mostrar_sabana.jsp">Sabana de materias</a></th>  
			</tr>
			<tr>
				<th><a href="Mostrar_materias.jsp">Materias</a></th> 
			</tr>
			<tr>
				<th><a href="Reportes_maestros.jsp">Reportes</a></th> 
			</tr>
				<th><a href="cerrar_sesion.jsp">Cerrar sesión</a></th> 
			</tr> 
		</table>
	</body>
</html>