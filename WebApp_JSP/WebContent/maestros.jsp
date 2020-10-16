<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Docentes</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<h1>Listado de Maestros</h1>
		
		<table>
			<tr>
				<th><a href="menu.jsp">Volver al menú</a></th>			
			</tr>
			<tr>
				<th><a href="cerrar_sesion.jsp">Cerrar Sesion</a></th>
			</tr>
		</table>
		<br>
		<table>
			<tr>
			 <th>Clave</th>
			 <th>Nombre</th>
			 <th colspan=2>Acciones</th>
			</tr>
		
			<c:forEach var="usuario" items="${lista}">
				<tr>
					<td><c:out value="${usuario.clave_maestro}"/></td>
					<td><c:out value="${usuario.nombre}"/></td>
					<th><a href="Ver_reporte.jsp?&clave_maestro=<c:out value="${usuario.clave_maestro}"/>">Reporte</a></th>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>