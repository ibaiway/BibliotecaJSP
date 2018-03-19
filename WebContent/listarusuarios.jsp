<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="gestorusuarios.html">Volver a atras</a>
<%@ page import="modelo.*"
import="java.util.ArrayList"
import="java.util.Iterator"
%>
<table border=1>
<%
UsuarioModelo usuarioModelo = new UsuarioModelo();
ArrayList<Usuario> usuarios = usuarioModelo.selectAll();
Iterator<Usuario> i = usuarios.iterator();
out.print("<tr> <th> ID </th><th> Nombre </th><th>Apellido</th></tr>");
while(i.hasNext()){
	Usuario usuario = i.next();
	out.print( "<tr><td>" + usuario.getId()+"</td><td>"+ usuario.getNombre()+"</td><td>"+usuario.getApellido()+"</td> </tr>" );
}
%>

</table>
</body>
</html>