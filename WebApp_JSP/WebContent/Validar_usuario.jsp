<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.flor.modelo.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<style>
form, h3 {
  text-align: center;
}</style>
</head>
<body>
<h3>
<% 
	Conexion c = new Conexion("jdbc:mysql://localhost:3306/appjsp", "root", "");

	String usuario = request.getParameter("usuario");
	String password = request.getParameter("password");
	String name;
	
	switch(c.conectar(usuario, password)){
		case 1:
			session.setAttribute("user", usuario);
			session.setAttribute("rol", 1);
			name=(String)session.getAttribute("user");
			response.sendRedirect("menu.jsp");
			break;
		case 2:
			session.setAttribute("user", usuario);
			session.setAttribute("rol", 2);
			name=(String)session.getAttribute("user");
			response.sendRedirect("m_reporte.jsp");
			break;
		default:
			out.write("El usuario es incorrecto o no existe");
			break;
	}
%>
</h3>
<form action="index.jsp" method="post">
	<input type="submit" value="Volver"/>
</form>
</body>
</html>