<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Reporte</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<h1>Reporte de materias</h1>
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<table>
			<tr>
				<th><a href="Reportes_maestros.jsp">Volver</a></th>			
			</tr>
			<tr>
				<th><a href="cerrar_sesion.jsp">Cerrar Sesion</a></th>
			</tr>
		</table>
		<br>
		<table>
			<tr>
			 <th>Nombre del maestro</th>
			 </tr>
				<tr>
					<td>${lista[0].getMaestro()}</td>
				</tr>			
		</table>	 
		<br>
		<table>
			<tr>
			 <th>C.Maestro</th>
			 <th>C.Materia</th>
			 <th>Materia</th>
			 <th>Grupo</th>
			 <th>Aula</th>
			 <th>N.Alumnos</th>
			 <th>C.Carrera</th>
			 <th>Semestre</th>
			 <th>Lunes</th>
			 <th>Martes</th>
			 <th>Miércoles</th>
			 <th>Jueves</th>
			 <th>Viernes</th>
			 <th>HT</th>
			 <th>HP</th>
			 <th>Créditos</th>	
			</tr>
				<c:forEach var="sabana" items="${lista}">
				<tr>
					<td><c:out value="${sabana.clave_maestro}"/></td>
					<td><c:out value="${sabana.clave_materia}"/></td>
					<td><c:out value="${sabana.materia}"/></td>
					<td><c:out value="${sabana.grupo}"/></td>
					<td><c:out value="${sabana.salon}"/></td>
					<td><c:out value="${sabana.no_alumnos}"/></td>
					<td><c:out value="${sabana.clave_carrera}"/></td>
					<td><c:out value="${sabana.semestre}"/></td>
					<td><c:out value="${sabana.lunes}"/></td>
					<td><c:out value="${sabana.martes}"/></td>
					<td><c:out value="${sabana.miercoles}"/></td>
					<td><c:out value="${sabana.jueves}"/></td>
					<td><c:out value="${sabana.viernes}"/></td>
					<td><c:out value="${sabana.horas_t}"/></td>
					<td><c:out value="${sabana.horas_p}"/></td>
					<td><c:out value="${sabana.creditos}"/></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>