<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//Ver si esta loggeado
	Object objeto = session.getAttribute("usuario");
	if (objeto == null) {
		response.sendRedirect("index.jsp");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="scripts.html"></jsp:include>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(document).ready( function () {
    $('#tlibros').DataTable();
} );
</script>
<title>Libros</title>
</head>
<body>
<jsp:include page="navbar.html"></jsp:include>
   
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
	out.print( "<tr><td>" + libro.getId()+"</td><td>"+ libro.getTitulo() +"</td><td>"+ libro.getAutor()+"</td><td>" + "<a href='book.jsp?id="+libro.getId()+"'>Mostrar</a>" +"</td> <td>" + "<a href='cambiarlibro.jsp?idlibro="+libro.getId()+"'>Cambiar</a>" +"</td> </tr>" );
}
%>
</tbody>
</table>


</body>
</html>