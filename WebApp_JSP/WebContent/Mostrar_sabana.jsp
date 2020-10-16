<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.flor.dao.SabanaDAO, com.flor.modelo.Sabana" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	SabanaDAO sabanaDAO= new SabanaDAO("jdbc:mysql://localhost:3306/appjsp", "root", "");
	
	if(session.getAttribute("rol").equals(1)){
		RequestDispatcher dispatcher = request.getRequestDispatcher("sabana.jsp");
		List<Sabana> listaSabana= sabanaDAO.listarSabana();
		request.setAttribute("lista", listaSabana);
		dispatcher.forward(request, response);
	}else{} 
%>
</body>
</html>