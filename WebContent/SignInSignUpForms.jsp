<%@ page errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Sign-In / Sign-Up</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css"></link>
</head>
<body>
	<div class="container-fluid">
		<!-- Row - 1 Start -->
		<div class="row">
			<%@ include file="Header.html"%>
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
						<div class="col-md-8">
							<h2>
								<strong>NEW ACCOUNT / SIGN IN</strong>
							</h2>
						</div>
						<!-- Column-1 End -->

						<!-- Column-2 Start -->
						<div class="col-md-4">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="#">HOME /</a></li>
								<li><a href="#">NEW ACCOUNT /</a></li>
								<li><a href="#">SIGN IN</a></li>
							</ul>
						</div>
						<!-- Column-2 End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Row-2 End -->

		<!-- Row-3 Start -->
		<div class="row">
			<div class="container">
				<!-- Column-1 Start -->
				<div class="col-md-6">
					<hr />
					<h2>
						<strong>NEW ACCOUNT</strong>
					</h2>
					<p class="grayText">
						<i>Not our registered customer yet?</i>
					</p>
					<br>
					<p>With registration with us new world of fashion, fantastic
						discounts and much more opens to you! The whole process will not
						take you more than a minute!</p>
					<p class="grayText">
						If you have any questions, please feel free to <a href="#">contact
							us</a>, our customer service center is working for you 24/7.
					</p>
					<hr />
					<form action="register" method="post">
						<div class="form-group">
							<label for="name">Name:</label> <input type="text"
								name="reg_name" class="form-control" id="name"
								placeholder="Enter name">
						</div>
						<div class="form-group">
							<label for="email">E-Mail:</label> <input type="email"
								name="reg_email" class="form-control" id="email"
								placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="pass">Password:</label> <input type="password"
								name="reg_pwd" class="form-control" id="pass"
								placeholder="Enter password">
						</div>
						<div class="form-group centerBtn">
							<button type="submit" class="btn btn-info">
								<span class="glyphicon glyphicon-open"> REGISTER</span>
							</button>
						</div>
						<hr />
					</form>
					<%
						String s = (String) request.getAttribute("stat");
						if (s != null) {
							if (s == "Y") {
					%>
					<div class="alert alert-success" role="alert">Registration
						Successful.</div>
					<%
						} else {
					%>
					<div class="alert alert-danger" role="alert">Registration
						Failed.</div>
					<%
						}
						}
					%>
				</div>
				<!-- Column-1 End -->

				<!-- Column-2 Start -->
				<div class="col-md-6">
					<hr />
					<h2>
						<strong>SIGN IN</strong>
					</h2>

					<p class="grayText">
						<i>Already our customer?</i>
					</p>
					<br>
					<p class="grayText">Get access to Orders, Wishlist and
						Recommendations.</p>
					<hr />
					<form action="login" method="post">
						<div class="form-group">
							<label for="email">E-Mail:</label> <input type="email"
								name="log_in_email" class="form-control" id="email"
								placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="pass">Password:</label> <input type="password"
								name="log_in_pwd" class="form-control" id="pass"
								placeholder="Enter password">
						</div>
						<div class="form-group centerBtn">
							<button type="submit" class="btn btn-info">
								<span class="glyphicon glyphicon-log-in"> LOG IN</span>
							</button>
						</div>
						<hr />
					</form>
					<%
						String l = (String) request.getAttribute("log");
						if (l != null) {
							if (l == "N") {
					%>
					<div class="alert alert-danger" role="alert">Invalid
						Credentials.</div>
					<%
						}
						}
					%>
				</div>
				<!-- Column-2 End -->

			</div>
		</div>
		<!-- Row-3 End -->

		<!-- Row-4 Start -->
		<div class="row">
			<footer>
				<div class="container">
					<div class="row">
						<!-- Column-1 Start -->
						<div class="col-md-3">
							<p>
								<b>ABOUT US</b>
							</p>
							<p>Prellentesque habitant morbi tristique senectus et netus
								et malesuada fames ac turpls egestas.</p>
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
						<div class="col-md-3 blog">
							<p>
								<b>BLOG</b>
							</p>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>BLOG POST NAME</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>BLOG POST NAME</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3"></img>
								<p class="col-md-9">
									<b>VERY VERY LONG BLOG POST NAME</b>
								</p>
							</div>
						</div>
						<!-- Column-2 End -->

						<!-- Column-3 Start -->
						<div class="col-md-3">
							<p>
								<b>CONTACT</b>
							</p>
							<p>TECHASPECT SOLUTIONS PVT. LTD.</p>
							<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
							<p>HITECH CITY PHASE 2, MADHAPUR</p>
							<p>HYDERABAD, TELANGANA - 500081</p>
							<p>INDIA</p>
							<button class="btn btn-info">GO TO CONTACT PAGE</button>
						</div>
						<!-- Column-3 End -->

						<!-- Column-4 Start -->
						<div class="col-md-3">
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-4 image">
								<img src="images/detailsquare2.jpg" class="col-md-4 image">
								<img src="images/detailsquare3.jpg" class="col-md-4 image">
							</div>
							<div class="row">
								<img src="images/detailsquare3.jpg" class="col-md-4 image">
								<img src="images/detailsquare2.jpg" class="col-md-4 image">
								<img src="images/detailsquare1.jpg" class="col-md-4 image">
							</div>
						</div>
						<!-- Column-4 End -->

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