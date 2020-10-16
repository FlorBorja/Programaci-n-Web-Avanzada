<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.flor.dao.MateriaDAO, com.flor.modelo.Materia" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	
MateriaDAO materiaDAO= new MateriaDAO("jdbc:mysql://localhost:3306/appjsp", "root", "");

if(session.getAttribute("rol").equals(1)){
	Materia materia = materiaDAO.obtenerClave(request.getParameter("clave"));
	request.setAttribute("materia", materia);
	RequestDispatcher dispatcher = request.getRequestDispatcher("Editar_materia.jsp");
	dispatcher.forward(request, response);
	}else{} 
%>
</body>
</html>