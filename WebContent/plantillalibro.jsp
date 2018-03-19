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
<style>
#portada{
width:100px;
height:200px;
}
</style>
<title>Plantilla libro</title>
</head>
<body>
<%@ page import="modelo.*"%>
<%

int id = Integer.parseInt(request.getParameter("id"));
LibroModelo libroModelo = new LibroModelo();
Libro libro = new Libro();
libro = libroModelo.select(id);

%>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
      <h5 class="my-0 mr-md-auto font-weight-normal">Zubiri Manteo</h5>
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="#">Features</a>
        <a class="p-2 text-dark" href="#">Enterprise</a>
        <a class="p-2 text-dark" href="#">Support</a>
        <a class="p-2 text-dark" href="#">Pricing</a>
      </nav>
      <a class="btn btn-outline-primary" href="#">Iniciar Sesion</a>
    </div>
<a href="listarlibros.jsp"><button type="button" class="btn btn-secondary">Volver a atras</button></a>



<div class="container">
 <div class="row">
    <div class="col"></div>
    <div class="col">
      <table border="1">
	<tr>
		<td><strong>Titulo:</strong></td>
		<td><% out.println(libro.getTitulo()); %></td>
		<td rowspan="2"><img id="portada" src="<% out.println(libro.getPortada());%>"></td>
	</tr>
	<tr>
		<td><strong>Autor:</strong></td>
		<td><% out.println(libro.getAutor()); %></td>
	</tr>
	<tr>
		<td colspan="3">Esto es una descripcion</td>
	</tr>
</table>
    </div>
    <div class="col"></div>
  </div>
  
</div>
</body>
</html>