<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Editar Materia</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<h1>Editar Materia</h1>
		<form action="actualizar.jsp" method="post">
			<table>
				<tr>
					<th><a href="Mostrar_materias.jsp" >Volver</a></th>
				</tr>
			</table>
			<table>
				<tr>
					<td><label>Id:</label></td>
					<td><input type="hidden" name="id" value='<c:out value="${materia.id}"></c:out>' ></td>
				</tr>
				<tr>
					<td><label>Clave:</label></td>		
					<td><input type="hidden" name="clave" value='<c:out value="${materia.clave}"></c:out>' ></td>
				</tr>
				<tr>
					<td><label>Materia:</label></td>		
					<td><input type="text" name="nombre" value='<c:out value="${materia.nombre}"></c:out>' ></td>		
				</tr>
				<tr>
					<td><label>Semestre:</label></td>		
					<td><input type="text" name="semestre" value='<c:out value="${materia.semestre}"></c:out>' ></td>
				</tr>
				<tr>
					<td><label>Carrera:</label></td>		
					<td><input type="text" name="carrera" value='<c:out value="${materia.carrera}"></c:out>' ></td>	
				</tr>
				<tr>
					<td><label>Creditos:</label></td>		
					<td><input type="text" name="creditos" value='<c:out value="${materia.creditos}"></c:out>' ></td>	
				</tr>	
				<tr>
					<td><label>Horas teóricas:</label></td>		
					<td><input type="text" name="horas_t" value='<c:out value="${materia.horas_t}"></c:out>' ></td>
				</tr>
				<tr>
					<td><label>Horas prácticas:</label></td>		
					<td><input type="text" name="horas_p" value='<c:out value="${materia.horas_p}"></c:out>' ></td>	
				</tr>		
			</table>
			<br>
			<table>
				<tr>
				<td><input type="submit" value="Actualizar" name="actualizar"></td>	
				</tr>
			</table>
		</form>
	</body>
</html>