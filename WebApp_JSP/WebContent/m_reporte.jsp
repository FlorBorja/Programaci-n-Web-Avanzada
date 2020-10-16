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
	
	String u = (String)session.getAttribute("user");
	
	List<Reporte> listaReporteP= reporteDAO.listarReporteP(u);
	request.setAttribute("lista", listaReporteP);
	RequestDispatcher dispatcher = request.getRequestDispatcher("reporte_maestro.jsp");
	dispatcher.forward(request, response); 
%>
</body>
</html>