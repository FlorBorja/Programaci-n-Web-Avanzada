<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registrar Materia</title>
		<link rel="stylesheet" type="text/css" href="css/default.css">
	</head>
	<body>
		<h1>Registrar Materia</h1>
		<% 
		if(session.getAttribute("rol").equals(1)){
			System.out.println("");
		}else{} 
		%>
		<form action="registrar.jsp" method="post">
			<table>
				<tr>
					<th><a href="Mostrar_materias.jsp" >Volver</a>
				</tr>
			</table>
			<table>
				<tr>
					<td>Clave:</td>		
					<td><input type="text" name="clave"/></td>	
				</tr>
				<tr>
					<td>Materia:</td>		
					<td><input type="text" name="nombre"/></td>		
				</tr>
				<tr>
					<td>Semestre:</td>		
					<td><input type="text" name="semestre"/></td>	
				</tr>
				<tr>
					<td>Carrera:</td>		
					<td><input type="text" name="carrera"/></td>	
				</tr>
				<tr>
					<td>Creditos:</td>		
					<td><input type="text" name="creditos"/></td>	
				</tr>	
				<tr>
					<td>Horas teóricas:</td>		
					<td><input type="text" name="horas_t"/></td>	
				</tr>
				<tr>
					<td>Horas prácticas:</td>		
					<td><input type="text" name="horas_p"/></td>	
				</tr>		
			</table>
			<br>
			<table>
				<tr>
				<td><input type="submit" value="Agregar" name="agregar"></td>	
				</tr>
			</table>
		</form>
	</body>
</html>