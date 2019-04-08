<%@ page errorPage="ErrorPage.jsp"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>My Account</title>

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
								<strong>MY ACCOUNT</strong>
							</h2>
						</div>
						<div class="col-md-3">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="HomePage.jsp">HOME /</a></li>
								<li><a href="#">MY ACCOUNT</a></li>
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
			<!-- Column-1 Start -->
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<p>Change your personal details or your password here.</p>
						<br>
						<h6>Pellentesque habitant morbi tristique senectus et netus
							et malesuada fames ac turpis egestas.</h6>
						<br>
						<hr />
						<form action="changePass" class="container-fluid" method="post">
							<!-- Row-1 Start -->
							<div class="row">
								<h3>
									<strong>CHANGE PASSWORD</strong>
								</h3>
								<hr class="linedesign" align="left">
							</div>
							<!-- Row-1 End -->

							<!-- Row-2 Start -->
							<div class="row">
								<div class="form-group col-md-6">
									<label for="oldpass">Old password</label> <input
										type="password" class="form-control" id="oldpass"
										name="oldpass" placeholder="Enter Old Password">
								</div>
							</div>
							<!-- Row-2 End -->

							<!-- Row-3 Start -->
							<div class="row">
								<div class="form-group col-md-6">
									<label for="newpass">New password</label> <input
										type="password" class="form-control" id="newpass"
										name="newpass" placeholder="Enter New Password">
								</div>
								<div class="form-group col-md-6">
									<label for="retypepass">Retype new password</label> <input
										type="password" class="form-control" id="retypepass"
										name="retypepass" placeholder="Retype New Password">
								</div>
							</div>
							<!-- Row-3 End -->

							<!-- Row-4 Start -->
							<div class="row">
								<div class="form-group centerBtn">
									<button type="submit" class="btn btn-info btn-design">
										<span class="glyphicon glyphicon-floppy-disk"></span> SAVE NEW
										PASSWORD
									</button>
								</div>
							</div>
							<!-- Row-4 End -->
						</form>
						<hr />
						<%
							String o = (String) request.getAttribute("oldPass");
							if (o != null) {
								if (o.equals("N")) {
						%>
						<div class="alert alert-danger" role="alert">Incorrect Old
							Password.</div>
						<%
							} else {
									String e = (String) request.getAttribute("newPassEretypePass");
									if (e != null) {
										if (e.equals("N")) {
						%>
						<div class="alert alert-danger" role="alert">New Password
							didn't match Retyped Password.</div>
						<%
							} else {
											String success = (String) request.getAttribute("success");
											if (success.equals("N")) {
						%>
						<div class="alert alert-danger" role="alert">Password Change
							was Un-successful.</div>
						<%
							} else {
						%>
						<div class="alert alert-success" role="alert">Password
							Changed Successfully.</div>
						<%
							}
										}
									}
								}
							}
						%>

						<form class="container-fluid" action="updateDetails" method="post">
							<!-- Row-1 Start -->
							<div class="row">
								<h3>
									<strong>PERSONAL DETAILS</strong>
								</h3>
								<hr class="linedesign" align="left">
							</div>
							<!-- Row-1 End -->

							<!-- Row-2 Start -->
							<div class="row">
								<!-- Column-1 Start -->
								<div class="form-group col-md-6">
									<label for="firstname">First Name</label> <input type="text"
										class="form-control" id="firstname" name="fname"
										placeholder="Enter First Name">
								</div>
								<!-- Column-1 End -->

								<!-- Column-2 Start -->
								<div class="form-group col-md-6">
									<label for="lastname">Last Name</label> <input type="text"
										class="form-control" id="lastname" name="lname"
										placeholder="Enter Last Name">
								</div>
								<!-- Column-2 End -->
							</div>
							<!-- Row-2 End -->

							<!-- Row-3 Start -->
							<div class="row container">
								<p>
									<b>Gender</b>
								<div class="radio">
									<label><input type="radio" name="gender" checked
										value="male">Male</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="gender" value="female">Female</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="gender"
										value="transgender">Transgender</label>
								</div>
							</div>
							<!-- Row-3 End -->

							<!-- Row-4 Start -->
							<div class="row">
								<div class="form-group col-md-12">
									<label for="address">Address</label>
									<textarea rows="4" cols="50" id="address" class="form-control"
										name="address"></textarea>
								</div>
							</div>
							<!-- Row-4 End -->

							<!-- Row-5 Start -->
							<div class="row">
								<!-- Column-1 Start -->
								<div class="form-group col-md-3">
									<label for="city">City</label> <input type="text"
										class="form-control" id="city" name="city">
								</div>
								<!-- Column-1 End -->

								<!-- Column-2 Start -->
								<div class="form-group col-md-3">
									<label for="zip">Zip</label> <input type="text"
										class="form-control" id="zip" name="zip">
								</div>
								<!-- Column-2 End -->

								<!-- Column-3 Start -->
								<div class="form-group col-md-3">
									<label for="country">Country</label> <select
										class="form-control" id="country" name="country"></select>
								</div>
								<!-- Column-3 End -->

								<!-- Column-4 Start -->
								<div class="form-group col-md-3">
									<label for="state">State</label> <select class="form-control"
										id="state" name="state"></select>
								</div>
								<!-- Column-4 End -->


							</div>
							<!-- Row-5 End -->

							<!-- Row-6 Start -->
							<div class="row">
								<!-- Column-1 Start -->
								<div class="form-group col-md-6">
									<label for="contact">Contact Number</label> <input type="tel"
										class="form-control" id="contact" name="contact"
										placeholder="Enter contact number">
								</div>
								<!-- Column-1 End -->

								<!-- Column-2 Start -->
								<div class="form-group col-md-6">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="email" name="email"
										placeholder="Enter Email">
								</div>
								<!-- Column-2 End -->

							</div>
							<!-- Row-6 End -->

							<!-- Row-7 Start -->
							<div class="row">
								<div class="form-group centerBtn">
									<button type="submit" class="btn btn-info btn-design">
										<span class="glyphicon glyphicon-envelope"> SAVE
											CHANGES</span>
									</button>
								</div>
							</div>
							<!-- Row-7 End -->

						</form>
						<%
							String u = (String) request.getAttribute("updated");
							if (u != null) {
								if (u.equals("N")) {
						%>
						<div class="alert alert-danger" role="alert">Update
							Unsuccessful</div>
						<%
							} else {
						%>
						<div class="alert alert-success" role="alert">Update
							Successful</div>
						<%
							}
							}
						%>
					</div>
					<!-- Column-1 End -->

					<!-- Column-2 Start -->
					<div class="col-md-3">
						<h3>
							<strong>CUSTOMER SECTION</strong>
						</h3>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#"><span class="glyphicon glyphicon-list"></span>
									My orders</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-heart"></span>
									My wishlist</a></li>
							<li class="active"><a href="#"><span
									class="glyphicon glyphicon-user"></span> My account</a></li>
							<li><a href="logout"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul>
					</div>
					<!-- Column-2 End -->
				</div>

			</div>

		</div>
	</div>
	<br>
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
						<p>Prellentesque habitant morbi tristique senectus et netus et
							malesuada fames ac turpls egestas.</p>
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

	<script src="js/countries.js"></script>
	<script language="javascript">
		// first parameter is id of country drop-down and second parameter is id of state drop-down
		populateCountries("country", "state");
		populateCountries("country2");
		populateCountries("country2");
	</script>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>