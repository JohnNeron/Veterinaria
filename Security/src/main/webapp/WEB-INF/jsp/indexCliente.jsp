<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<title>Bienvenido Usuario</title>
<!-- Bootstrap core CSS -->
<link href="css/estilo.css" rel="stylesheet">

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
					<h3>Bienvenido!</h3>
					<h3>${u.username}</h3>
					<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/logout">Cerrar Sesión</a>
					</ul>
					</form>
			</div>
		</nav>
	</header>

	<main role="main">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    </ol>
    
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img alt="" src="img/perro2.jpg">
        <div class="container">
          <div class="carousel-caption" style="text-align: left;">
            <h1 >DR PET</h1>
            <h3>Bienvenidos</h3>
          </div>
        </div>
      </div>
     </div>
  </div>

<hr class="featurette-divider">
<!-- START THE FEATURETTES -->
<hr class="featurette-divider">
	<div class="container">
	<div class="row-fluid">
        <div class="span8">
        	<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
        	src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26623.961755121396!2d-70.63357620966775!3d-33.475475238108494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662cf930b1dacab%3A0x845ea386e5342239!2sDr%20pet!5e0!3m2!1ses-419!2scl!4v1602430227637!5m2!1ses-419!2scl"></iframe>
    	</div>
    
      	<div class="span4">
    		<h2><b><i>Veterinaria Dr Pet</i></b></h2>
    			<strong>Pedro de Valdivia #3762</strong><br>
    			Providencia - Santiago<br>
    			<p>Telefono: +56 97654329</p> 
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
	</main>	
</html>