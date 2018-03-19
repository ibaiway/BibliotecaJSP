<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(document).ready( function () {
    $('#tlibros').DataTable();
} );
</script>
<title>Libros</title>
</head>
<body>
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
   
<a href="gestorlibros.html"><button type="button" class="btn btn-secondary">Volver a atras</button></a>
<%@ page import="modelo.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<table id="tlibros" class="display">
<%
LibroModelo libroModelo = new LibroModelo();
ArrayList<Libro> libros = libroModelo.selectAll();
Iterator<Libro> i = libros.iterator();
out.print("<thead><tr> <th> ID </th><th> Titulo </th><th> Autor </th><th>Informacion</th><th>Actualizar</th></tr></thead><tbody>");
while(i.hasNext()){
	Libro libro = i.next();
	out.print( "<tr><td>" + libro.getId()+"</td><td>"+ libro.getTitulo() +"</td><td>"+ libro.getAutor()+"</td><td>" + "<a href='plantillalibro.jsp?id="+libro.getId()+"'>Mostrar</a>" +"</td> <td>" + "<a href='cambiarlibro.jsp?idlibro="+libro.getId()+"'>Cambiar</a>" +"</td> </tr>" );
}
%>
</tbody>
</table>


</body>
</html>