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
		RequestDispatcher dispatcher = request.getRequestDispatcher("materias.jsp");
		List<Materia> listaMateria= materiaDAO.listarMaterias();
		request.setAttribute("lista", listaMateria);
		dispatcher.forward(request, response);
		}else{} 
%>
</body>
</html>