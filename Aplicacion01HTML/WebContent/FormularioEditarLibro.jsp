<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@page import="com.arquitecturajava.Libro"%>
<%Libro libro= Libro.buscarPorClave(request.getParameter("isbn"));%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="InsertarLibro.jsp" onsubmit="return validacion();">

		<fieldset>
			<legend>Formulario alta Libro</legend>
			<p>
				<label for="isbn">ISBN:</label> <input id="isbn" type="text"
					name="isbn" value="<%=libro.getIsbn()%>" />
			</p>
			<p>
				<label for="titulo">Titulo:</label> <input id="titulo" type="text"
					name="titulo" value="<%=libro.getTitulo()%>" />
			</p>
			<p>
				<label for="categoria">Categoria:</label> <select name="categoria">

					<%
						List<String> listaDeCategorias = null;
						listaDeCategorias = Libro.buscarTodasLasCategorias();
						for (String categoria : listaDeCategorias) {
							if (libro.getCategoria().equals(categoria)) {
					%>
					<option value="<%=categoria%>" selected="selected">
						<%=categoria%></option>
					<%
						} else {
					%>
					<option value="<%=categoria%>"><%=categoria%></option>
					<%
						}
						}
					%>
				</select>
			</p>
			<p>
				<input type="submit" value="Salvar">
			</p>

		</fieldset>
	</form>
</body>
</html>