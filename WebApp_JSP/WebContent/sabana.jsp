<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sabana</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<h1>Listado de sabana</h1>
		
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
			 <th>C.Horario</th>
			 <th>C.Maestro</th>
			 <th>C.Materia</th>
			 <th>C.Carrera</th>
			 <th>Materia</th>
			 <th>Carrera</th>
			 <th>Maestro</th>
			 <th>Periodo</th>
			 <th>Turno</th>
			 <th>Grupo</th>
			 <th>N.alumnos</th>
			 <th>Semestre</th>
			 <th>Créditos</th>
			 <th>Lunes</th>
			 <th>Martes</th>
			 <th>Miércoles</th>
			 <th>Jueves</th>
			 <th>Viernes</th>
			 <th>Salón</th>
			 <th>HT</th>
			 <th>HP</th>
			</tr>
		
			<c:forEach var="sabana" items="${lista}">
				<tr>
					<td><c:out value="${sabana.clave_horario}"/></td>
					<td><c:out value="${sabana.clave_maestro}"/></td>
					<td><c:out value="${sabana.clave_materia}"/></td>
					<td><c:out value="${sabana.clave_carrera}"/></td>
					<td><c:out value="${sabana.materia}"/></td>
					<td><c:out value="${sabana.carrera}"/></td>
					<td><c:out value="${sabana.maestro}"/></td>
					<td><c:out value="${sabana.periodo}"/></td>
					<td><c:out value="${sabana.turno}"/></td>
					<td><c:out value="${sabana.grupo}"/></td>
					<td><c:out value="${sabana.no_alumnos}"/></td>
					<td><c:out value="${sabana.semestre}"/></td>
					<td><c:out value="${sabana.creditos}"/></td>
					<td><c:out value="${sabana.lunes}"/></td>
					<td><c:out value="${sabana.martes}"/></td>
					<td><c:out value="${sabana.miercoles}"/></td>
					<td><c:out value="${sabana.jueves}"/></td>
					<td><c:out value="${sabana.viernes}"/></td>
					<td><c:out value="${sabana.salon}"/></td>
					<td><c:out value="${sabana.horas_t}"/></td>
					<td><c:out value="${sabana.horas_p}"/></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>