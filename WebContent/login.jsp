<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*"%>
<%
	String dni = request.getParameter("dni");
	String contrasena = request.getParameter("contrasena");
	UsuarioModelo usuarioModelo = new UsuarioModelo();
	Usuario usuario = usuarioModelo.selectPorDni(dni);
	if (usuario != null && contrasena.equals(usuario.getContrasena())) {
		session.setAttribute("usuario", usuario);
		response.sendRedirect("biblioteca.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
%>