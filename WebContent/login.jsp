<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String nombre = request.getParameter("nombre");
    String contrasena = request.getParameter("contrasena");
    
    
    
    if(nombre.equals("ibai") && contrasena.equals("1234")){
    	session.setAttribute("iniciado", "si");
    	response.sendRedirect("sistema.jsp");
    }else{
    	response.sendRedirect("login_form.jsp");
    }
    
    %>