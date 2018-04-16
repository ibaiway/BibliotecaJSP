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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.html"></jsp:include>


<h1>[insertar nombre persona] We hope you enjoy reading [insertar nombre de libro] remember to bring it back before [insertar fecha fin prestamo]</h1>
</body>
</html>