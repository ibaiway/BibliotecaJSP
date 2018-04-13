<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="scripts.html"></jsp:include>
<title>Biblioteca de ibai</title>
</head>
<body>

	<div
		class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
		<h5 class="my-0 mr-md-auto font-weight-normal">Zubiri Manteo</h5>
		<nav class="my-2 my-md-0 mr-md-3"> <a class="p-2 text-dark"
			href="#">Features</a> <a class="p-2 text-dark" href="#">Enterprise</a>
		<a class="p-2 text-dark" href="#">Support</a> <a class="p-2 text-dark"
			href="#">Pricing</a> </nav>
		<a class="btn btn-outline-primary" href="login.html">Iniciar Sesion</a>
		<a class="btn btn-outline-primary" href="register.jsp">Registrarse</a>
	</div>

	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">Biblioteca Zubiri manteo</h1>
		<p class="lead">Libros en mas de 3 idiomas a tu disposicion! 24
			horas 7 dias de la semana.</p>
	</div>

	<div class="container">
		<div class="card-deck mb-3 text-center">
			<div class="card mb-4 box-shadow">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">Gestor de Libros</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						$0 <small class="text-muted">/ mo</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>Busqueda de libros</li>
						<li>Insertar libros</li>
						<li>Eliminar Libros</li>
						<li>Actualizacion de libros</li>
					</ul>
					<a href="gestorlibros.html"><button type="button"
							class="btn btn-lg btn-block btn-outline-primary">Iniciar</button></a>
				</div>
			</div>
			<div class="card mb-4 box-shadow">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">Gestor de Usuarios</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						$15 <small class="text-muted">/ mo</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>Busqueda de usuarios</li>
						<li>Creacion de usuarios</li>
						<li>Eliminacion de usuarios</li>
						<li>Modificacion de usuarios</li>
					</ul>
					<a href="gestorusuarios.html"><button type="button"
							class="btn btn-lg btn-block btn-primary">Iniciar</button></a>
				</div>
			</div>
			<div class="card mb-4 box-shadow">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">Gestor de prestamos</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						$29 <small class="text-muted">/ mo</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>Busqueda de prestamos</li>
						<li>Creacion de prestamos</li>
						<li></li>
						<li>Help center access</li>
					</ul>
					<a href="gestorprestamos.html"><button type="button"
							class="btn btn-lg btn-block btn-primary">Iniciar</button></a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>