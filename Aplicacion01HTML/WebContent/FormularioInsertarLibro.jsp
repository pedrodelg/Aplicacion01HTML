<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<link rel="stylesheet" type="text/css" href="css/formato.css"/>
	<script type="text/javascript" src="js/validacion.js"></script> 
		
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Libro</title>
</head>
<body>

<form action="InsertarLibro.jsp" onsubmit="return validacion();"> 

<fieldset>
	<legend>Formulario alta Libro</legend>
	<p><label for="isbn">ISBN:</label> 
	<input id="isbn" type="text" name="isbn"></p>
	<p><label for="titulo">Titulo:</label>
	<input id="titulo" type="text" name="titulo" ></p>
	<p><label for="categoria">Categoria:</label>
	<input id="categoria" type="text" name="categoria"></p>
	<p>
	<input type="submit" value="Insertar">
	</p>

</fieldset>
</form>
</body>
</html>