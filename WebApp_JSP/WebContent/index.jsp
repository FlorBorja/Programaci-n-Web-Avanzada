<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.flor.modelo.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<style>
	table {width: 30%;}
</style>
</head>
<body>
<h1>Login</h1>
<form action="Validar_usuario.jsp" method="post">
	<table>
		<tr>
			<td><br>Usuario:<input type="text" name="usuario"><br><br></td>
		</tr>
		<tr>
		 	<td><br>Contraseña:<input type="password" name="password"><br><br></td>
		</tr>
		<tr><th><input type="submit" value="Iniciar sesión" name="iniciar_sesion"/></th></tr>
	</table>
</form> 
</body>
</html>