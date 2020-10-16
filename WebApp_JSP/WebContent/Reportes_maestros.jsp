<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.flor.modelo.Reporte, com.flor.dao.ReporteDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ReporteDAO reporteDAO = new ReporteDAO("jdbc:mysql://localhost:3306/appjsp", "root", "");
	
	if(session.getAttribute("rol").equals(1)){	
		RequestDispatcher dispatcher = request.getRequestDispatcher("maestros.jsp");
		List<Reporte> listaMaestro= reporteDAO.listarMaestro();
		request.setAttribute("lista", listaMaestro);
		dispatcher.forward(request, response);
	}else{} 
%>
</body>
</html>