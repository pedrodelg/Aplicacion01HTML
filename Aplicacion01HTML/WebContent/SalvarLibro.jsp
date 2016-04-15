<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="com.arquitecturajava.Libro"%>
    
    <%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String categoria = request.getParameter("categoria");
	//realizo la consulta usando el DBHelper y el codigo queda simplificado
	Libro libro = new Libro(isbn, titulo, categoria);
	libro.salvar();
	response.sendRedirect("MostrarLibros.jsp");
%>