<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*" %>
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
	session = request.getSession();
	//System.out.println("Se cerrara la siguiente sesión: " + session.getAttribute("name"));
	//session.removeAttribute("name");
	out.println("Se ha cerrado la sesión "+"'"+session.getAttribute("user")+"'"+" de manera exitosa");
	session.invalidate();
	//response.sendRedirect("index.jsp");
%>
</h3>
<form action="index.jsp" method="post">
	<input type="submit" value="Continuar"/>
</form>
</body>
</html>