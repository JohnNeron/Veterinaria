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
<title>Editar</title>
<!-- Bootstrap core CSS -->
<link href="css/estilo.css" rel="stylesheet">
<link href="js/script.js" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		 <a class="navbar-brand" href="#">P E T </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/">Inicio</a>
					<li class="nav-item"><a class="nav-link" href="/registrarMascota">RegistrarMascota</a>
					<li class="nav-item"><a class="nav-link" href="/listar">Volver</a>

				</ul>
			</div>
		</nav>
	</header>
	

<div class="w3-sand w3-grayscale w3-large">

<!-- About Container -->
	<div class="w3-container" id="about">
		<div class="w3-content" style="max-width: 700px">
			<h5 class="w3-center w3-padding-64">
				<span class="w3-tag w3-wide">Formulario Estudiante</span>
			</h5>
		</div>
	</div>
	
<!-- Contact/Area Container -->
	<div class="w3-container" id="where" style="padding-bottom: 32px;">
		<div class="w3-content" style="max-width: 700px">

			<form:form action="/agregar" method="POST" modelAttribute="duenio">
			
				<form:hidden path="id" value="${d.id}"/>
				<label>Nombre: </label>
				<form:input path="nombre" cssClass="w3-input w3-padding-16 w3-border" value= "${d.nombre }"/>
				<form:errors path="nombre"></form:errors>
				<form:hidden path="apellido" value="${d.apellido}"/>
				<form:hidden path="direccion" value="${d.direccion}"/>
				<form:hidden path="ciudad" value="${d.ciudad}"/>
				<form:hidden path="telefono" value="${d.telefono}"/>
				<label for="example-time-input" class="col-form-label">AgregarMascota</label>
				<form:select path="mascota" cssClass="custom-select">
				<form:options items="${mascotas}" itemValue="id" itemLabel="nombre"/>
				</form:select>
				<input type="submit" value="Agregar" class="w3-input w3-padding-16 w3-border">
		</form:form>
				
				<form:form action="/listar" method="GET">
					<input type="submit" value="Cancelar" class="w3-input w3-padding-16 w3-border">
				</form:form>
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