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
<title>Ver</title>
<!-- Bootstrap core CSS -->
<link href="css/estilo.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="js/myjs.js"></script>

<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
					<li class="nav-item"><a class="nav-link" href="/registrar">Registrar</a>
					<li class="nav-item"><a class="nav-link" href="/registrarMascota">RegistrarMascota</a>
					<li class="nav-item"><a class="nav-link" href="/listar">Ver</a>
				</ul>
								
					<form class="form-inline mt-4 mt-md-0">
					<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/logout">Cerrar Sesión</a>
					</ul>
					</form>
			</div>
		</nav>
	</header>
	<div class="w3-sand w3-grayscale w3-large">
<section class="page-section portfolio" id="portfolio">
		<div class="jumbotron">
		<h2> Registro Mascotas <i style='font-size:24px' class='fas'>&#xf6be;</i><i style='font-size:24px' class='fas'>&#xf520;</i><i style='font-size:24px' class='fas'>&#xf6d3;</i></h2>
		<p>Escriba una palabra para comenzar la búsqueda:</p>
		<input class="form-control" id="myInput" type="text"
			placeholder="Search.."> <br>
			
	
				<!-- About Container -->
			<div class="w3-container" id="about">
				<div class="w3-content" style="max-width: 700px">
					<h5 class="w3-center w3-padding-64">
						<span class="w3-tag w3-wide">Lista de Mascotas</span>
					</h5>
				</div>
			</div>
		
		<!-- Contact/Area Container -->
		<div class="w3-container" id="where" style="padding-bottom: 32px;">
			<div class="w3-content" style="max-width: 1200px">
				<table>
					<th style="width: 200px"> Nombre</th>
					<th style="width: 150px"> Fecha de Nacimiento</th>
					<th style="width: 150px"> Fecha de Visita</th>
					<th style="width: 350px"> Descripcion</th>
					<th style="width: 100px"> Acciones</th>
					
				<c:forEach items="${mascotas}" var="m">
				<tbody id="myTable">
					<tr>
							<td>${m.nombre}</td>
							<td>${m.fechaNacto}</td>
							<td>${m.fechaVisita}</td>
							<td>${m.descripcion}</td>
							<td>
						<form action="EliminarMascota" method="POST">
							<input type="hidden" name="id" value="${m.id}"> 
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="submit" onclick="return confirmEliminar(${m.id})"	value="Eliminar">
						</form>
							</td>
						<td>
							<form action="CargarMascota" method="POST">
							<input type="hidden" name="id" value="${m.id}"> 
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="submit" value="Modificar">
							</form>
						</td>
					</tr>
				</c:forEach>
				</tbody>
				</table>
				<br>
				<form:form action="listar" method="GET">
				<input type="submit" class="btn btn-primary btn-block-user btn-block" value="Ver Dueños">
				</form:form>
			</div>
		</div>
	</div>
</section>
</div>
	

</body>
<hr class="featurette-divider">
<script>

$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<!-- FOOTER -->
<footer class="container" style="font-size: x-small; text-align: center;">
	<p > &copy; 2017-2020 Company, Inc. &middot; <a href="#">Privacy</a>
	&middot;</p>
	<p style="font-size: x-small;">Pedro de Valdivia #3762, Providencia.                                                  
	www.drpet.com</p>

</footer>
</html>