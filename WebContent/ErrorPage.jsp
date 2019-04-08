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
			<footer>
				<div class="container">
					<div class="row">
						<!-- Column-1 Start -->
						<div class="col-md-4">
							<p>
								<b>ABOUT US</b>
							</p>
							<p>TechAspect empowers small and medium-sized businesses to
								reach millions of customers with a number of programs that help
								boost their revenue, reach and productivity. By telling stories
								from a wide range of perspectives, we tell the larger story of
								who TechAspect is and how TechAspect's core business practices
								contribute to a better India.</p>
							<hr />
							<p>
								<b>JOIN OUR MONTHLY NEWSLETTER</b>
							</p>

							<div class="input-group">
								<input type="email" class="form-control"> <span
									class="input-group-btn">
									<button class="btn" type="button">
										<span class="glyphicon glyphicon-send"></span>
									</button>
								</span>
							</div>
						</div>
						<!-- Column-1 End -->

						<!-- Column-2 Start -->
						<div class="col-md-4 blog">
							<p>
								<b>BLOG</b>
							</p>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3 img-circle"></img>
								<p class="col-md-9">
									<b>Learn more about how TechAspect is supporting small
										businesses</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3 img-circle"></img>
								<p class="col-md-9">
									<b>Customer Success</b>
								</p>
							</div>
						</div>
						<!-- Column-2 End -->

						<!-- Column-3 Start -->
						<div class="col-md-4">
							<p>
								<b>CONTACT</b>
							</p>
							<p>TECHASPECT SOLUTIONS PVT. LTD.</p>
							<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
							<p>HITECH CITY PHASE 2, MADHAPUR</p>
							<p>HYDERABAD, TELANGANA - 500081</p>
							<p>INDIA</p>
							<button class="btn btn-info">Go To Contact Page</button>
						</div>
						<!-- Column-3 End -->

					</div>
					<br>
				</div>
			</footer>
		</div>
		<!-- Row-4 End -->

		<!-- Row-5 Start -->
		<div class="row">
			<div class="container-fluid copy">
				<div class="container">
					<div class="row">
						<p>
							<span class="glyphicon glyphicon-copyright-mark"></span> 2018.
							TechAspect Solutions Private Limited.
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-5 End -->

	</div>

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>