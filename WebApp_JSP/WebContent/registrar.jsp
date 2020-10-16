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
		Materia materia = new Materia(0, request.getParameter("clave"), request.getParameter("nombre"), 
				Integer.parseInt(request.getParameter("semestre")), request.getParameter("carrera"), 
				Integer.parseInt(request.getParameter("creditos")),Integer.parseInt(request.getParameter("horas_t")),
				Integer.parseInt(request.getParameter("horas_p")));
		materiaDAO.insertar(materia);
		RequestDispatcher dispatcher= request.getRequestDispatcher("Mostrar_materias.jsp");
		dispatcher.forward(request, response);
	}else{} 
%>
</body>
</html>