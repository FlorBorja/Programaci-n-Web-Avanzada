<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Administrar Materias</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<h1>Administrar Materias</h1>
		<table>
			<tr>
				<th><a href="Registrar_materia.jsp">Registrar Materia</a></th>			
			</tr>
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
			 <th>Id</th>
			 <th>Clave</th>
			 <th>Materia</th>
			 <th>Semestre</th>
			 <th>Carrera</th>
			 <th>Créditos</th>
			 <th>HT</th>
			 <th>HP</th>
			 <th colspan=2>Acciones</th>
			</tr>
			<c:forEach var="materia" items="${lista}">
				<tr>
					<td><c:out value="${materia.id}"/></td>
					<td><c:out value="${materia.clave}"/></td>
					<td><c:out value="${materia.nombre}"/></td>
					<td><c:out value="${materia.semestre}"/></td>
					<td><c:out value="${materia.carrera}"/></td>
					<td><c:out value="${materia.creditos}"/></td>
					<td><c:out value="${materia.horas_t}"/></td>
					<td><c:out value="${materia.horas_p}"/></td>
					<th><a href="show_editar.jsp?&clave=<c:out value="${materia.clave}" />">Editar</a></th>
					<th><a href="eliminar.jsp?&clave=<c:out value="${materia.clave}"/>">Eliminar</a> </th>				
				</tr>
			</c:forEach>
		</table>
	</body>
</html>