<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ page import="modelo.*"%>
<%
if(request.getParameter("cambiar") != null){
	Libro libro = new Libro();
	libro.setId(Integer.parseInt(request.getParameter("id")));
	libro.setAutor(request.getParameter("autor"));
	libro.setTitulo(request.getParameter("titulo"));
	LibroModelo libroModelo = new LibroModelo();
	libroModelo.update(libro);
	
	out.print(" <div class='alert alert-success'>" +
			 " <strong><span class='glyphicon glyphicon-ok' aria-hidden='true'></span>"+
			"  </strong> Los cambios se han guardado correctamente. </div>");
	
}else{
	
	
%>
<div class="alert alert-danger">
  <strong><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
  </strong> Se ha encontrado un error.
</div>

<form action="#" method="POST">
	<input type="hidden" name="id" value="<%=request.getParameter("idlibro")%>">
  Titulo:<br>
  <input type="text" name="titulo" value="">
  <br>
  Autor:<br>
  <input type="text" name="autor" value="">
  <br>
  <input type="submit" name="cambiar" value="cambiar">
</form> 
<%} %>
</body>
</html>