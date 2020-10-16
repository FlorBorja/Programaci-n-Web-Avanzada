<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*, com.flor.dao.ReporteDAO, com.flor.modelo.Reporte" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	
	ReporteDAO reporteDAO= new ReporteDAO("jdbc:mysql://localhost:3306/appjsp", "root", "");
	
	if(session.getAttribute("rol").equals(1)){
		List<Reporte> listaReporte= reporteDAO.listarReporte(request.getParameter("clave_maestro"));
		request.setAttribute("lista", listaReporte);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reporte.jsp");
		dispatcher.forward(request, response);
	}else{} 
%>
</body>
</html>