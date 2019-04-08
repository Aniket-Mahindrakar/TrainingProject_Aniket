<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Error Page</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"></link>
</head>
<body>
	<div class="container-fluid">
		<!-- Row - 1 Start -->
		<div class="row">
			<%@ include file="Header.jsp"%>
		</div>
		<!-- Row - 1 End -->

		<!-- Row-2 Start -->
		<div class="row navbar navbar-default" id="r2">

			<!-- Menu Bar -->
			<%@ include file="Navbar.html"%>

			<div class="top">
				<div class="container">
					<div class="row">
						<!-- Column-1 Start -->
						<div class="col-md-9">
							<h2>
								<strong>Error Page</strong>
							</h2>
						</div>
						<!-- Column-1 End -->

						<!-- Column-2 Start -->
						<div class="col-md-3">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="HomePage.jsp">Home /</a></li>
								<li><a href="#">Error /</a></li>
							</ul>
						</div>
						<!-- Column-2 End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Row-2 End -->

		<!-- Row-3 Start -->
		<div class="row" align="center">
			<div class="container">
				<hr />
				<div class="row">
					<h3>Sorry for the Inconvenience - The Page you are looking for
						does not Exist.</h3>
					<h3>
						<small>Seems like either you have tried to write or modify
							the URL. Use only the Navigation Links provided on the Web Page.</small>
					</h3>
				</div>
				<div class="row">
					<a class="btn btn-info btn-design" href="HomePage.jsp"> <span
						class="glyphicon glyphicon-home"></span> Home
					</a>
				</div>
				<hr />
			</div>
		</div>
		<!-- Row-3 End -->

		<!-- Row-4 Start -->
		<div class="row">
			<%@ include file="Footer.html"%>
		</div>
		<!-- Row-4 End -->

		<!-- Row-5 Start -->
		<div class="row">
			<%@ include file="Copyright.html"%>
		</div>
		<!-- Row-5 End -->


	</div>

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>