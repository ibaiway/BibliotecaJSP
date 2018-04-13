<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ page import="modelo.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>


<%
Libro libro = new Libro();
libro.setAutor(request.getParameter("autor"));
libro.setTitulo(request.getParameter("titulo"));
LibroModelo libroModelo = new LibroModelo();
libroModelo.insert(libro);


libro = libroModelo.selectPorTitulo(libro.getTitulo());
out.print("El libro <b>"+libro.getTitulo()+"</b> de <b>"+libro.getAutor()+"</b> ha sido añadido a la base de datos con el ID:<b>"+libro.getId()+"</b>");

%>
<br>

<ul>
  <li><a href="gestorlibros.html">Volver al gestor de libros</a></li>
  <li><a href="insertarlibro.html">Insertar otro libro</a></li>
</ul>

</body>
</html>