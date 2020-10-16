<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.flor.dao.MateriaDAO, com.flor.modelo.Materia" %>
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
		materiaDAO.eliminar(materia);
		RequestDispatcher dispatcher= request.getRequestDispatcher("Mostrar_materias.jsp");
		dispatcher.forward(request, response);
		System.out.println("Operación realizada de manera exitosa");
	}else{}

/*if(name.equalsIgnoreCase("jefe")){	
	try{
	
	Materia materia = materiaDAO.obtenerClave(request.getParameter("clave"));
	materiaDAO.eliminar(materia);
	RequestDispatcher dispatcher= request.getRequestDispatcher("Mostrar_materias.jsp");
	dispatcher.forward(request, response);
	System.out.println("Operación realizada de manera exitosa");
	}catch(Exception e){}
}else{
	response.sendRedirect("menu.jsp");
	System.out.println("El usuario " + name + " no cuenta con autorización");
}*/
%>
</body>
</html>