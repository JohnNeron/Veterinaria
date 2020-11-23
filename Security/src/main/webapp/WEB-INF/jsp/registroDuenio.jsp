<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<title>Index</title>
<!-- Bootstrap core CSS -->
<link href="css/estilo.css" rel="stylesheet">
<link href="js/script.js" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		 <a class="navbar-brand" href="#">P E T <i class="fas fa-paw"></i></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/">Inicio</a>
					<li class="nav-item"><a class="nav-link" href="/listar">Ver</a>
				</ul>
								
					<form class="form-inline mt-4 mt-md-0">
					<input class="form-control mr-sm-2" type="text" placeholder="Buscar" aria-label="Buscar">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  					<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
					<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
					</svg> Buscar</button>
					</form>
			</div>
		</nav>
	</header>
<br>
	<!-- Formulario  -->
<div class="w3-sand w3-grayscale w3-large">

	<div class="w3-container" id="about">
			<div class="w3-content" style="max-width: 700px">
				<h5 class="w3-center w3-padding-64">
					<span class="w3-tag w3-wide">Ingrese sus datos para crear una cuenta</span>
				</h5>
			</div>
		</div>
		
	<div class="w3-container" id="where" style="padding-bottom: 32px;">
		<div class="w3-content" style="max-width: 700px">

			<form:form action="/agregarDuenio" method="POST" modelAttribute="duenio">
				<label>Nombre: </label>
				<form:input path="nombre" cssClass="w3-input w3-padding-16 w3-border" />
				<form:errors path="nombre"></form:errors><br>
				
				<label>Apellido:</label> 
				<form:input  path="apellido" cssClass="w3-input w3-padding-16 w3-border" />
				<form:errors path="apellido"></form:errors><br>
				
				<label>Direccion </label>
				<form:input path="direccion" cssClass="w3-input w3-padding-16 w3-border" />
				<form:errors path="direccion"></form:errors><br>
				
				<label>Ciudad </label>
				<form:input path="ciudad" cssClass="w3-input w3-padding-16 w3-border" />
				<form:errors path="ciudad"></form:errors><br>
				
				<label>Telefono </label>
				<form:input path="telefono" cssClass="w3-input w3-padding-16 w3-border" />
				<form:errors path="telefono"></form:errors><br>
				
				
				<input type="submit" value="Terminar Registro" class="w3-input w3-padding-16 w3-border">
		</form:form>
		</div>
	</div>
</div>
</body>

<hr class="featurette-divider">
<!-- FOOTER -->
<footer class="container" style="font-size: x-small; text-align: center;">
	<p > &copy; 2017-2020 Company, Inc. &middot; <a href="#">Privacy</a>
	&middot;</p>
	<p style="font-size: x-small;">Pedro de Valdivia #3762, Providencia.                                                  
	www.drpet.com</p>

</footer>
</html>