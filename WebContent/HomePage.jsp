<%@ page errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home Page</title>

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
		</div>
		<!-- Row-2 End -->

		<!-- Row-3 Start -->
		<div class="row">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/6ba3efd52627f2af.jpg">
					</div>

					<div class="item">
						<img src="images/023d2d4a9cf86f42.jpg">
					</div>

					<div class="item">
						<img src="images/08d3e861b53705df.jpg">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!-- Row-3 End -->

		<!-- Row-4 Start -->
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><small>Deals of the
								Day</small></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn btn-primary">View All</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Row-4 End -->

		<!-- Row-5 Start -->
		<div class="row" align="center">
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/shoes_1.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Men's Footwear</b>
						</h5>
						<p>Upto 60 + Extra 10% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/shoes_2.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Adidas, Reebok &amp; Puma</b>
						</h5>
						<p>Upto 50 + Extra 5% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/laptop_bag.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Laptop Bags</b>
						</h5>
						<p>From &#8377;249</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/memory_card.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Memory Cards ...</b>
						</h5>
						<p>Extra 5% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/watch.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Timex, Maxima ...</b>
						</h5>
						<p>Under &#8377;999 + Extra 7% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/bags.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Skybags, American ...</b>
						</h5>
						<p>Under &#8377;999 + Extra 5% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-5 End -->

		<!-- Row-6 Start -->
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><small>Featured
								Brands</small></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn btn-primary">View All</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Row-6 End -->

		<!-- Row-7 Start -->
		<div class="row" align="center">
			<div class="col-md-3">
				<div class="thumbnail">
					<img src="images/add1.jpg">
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img src="images/add2.jpg">
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img src="images/add3.jpg">
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img src="images/add4.jpg">
				</div>
			</div>
		</div>
		<!-- Row-7 End -->


		<!-- Row-8 Start -->
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><small>Mobile New
								Launches</small></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn btn-primary">View All</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Row-8 End -->

		<!-- Row-9 Start -->
		<div class="row" align="center">
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile1.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Redmi Note 6 Pro</b>
						</h5>
						<p>12MP+5MP | 20MP+2MP</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile2.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Realme 2</b>
						</h5>
						<p>13MP+2MP | 8MP Camera</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile3.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Realme C1</b>
						</h5>
						<p>13MP+2MP | 5MP Camera</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile4.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Nokia 6.1 Plus</b>
						</h5>
						<p>16MP+5MP Camera</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile5.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Lenovo A5</b>
						</h5>
						<p>16MP | 8MP Camera</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/mobile6.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Redmi Note 5 Pro</b>
						</h5>
						<p>12MP+5MP Camera</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-9 End -->

		<!-- Row-10 Start -->
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><small>Home Decor
								Range</small></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn btn-primary">View All</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Row-10 End -->

		<!-- Row-11 Start -->
		<div class="row" align="center">
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/dec_bottle.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Decorative Bottles</b>
						</h5>
						<p>From &#8377;199</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/clock.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Wall Clocks</b>
						</h5>
						<p>Minimum 50% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/showpiece.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>FengShui Showpieces</b>
						</h5>
						<p>Under &#8377;999</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/shelves.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Wall Shelves</b>
						</h5>
						<p>Upto 80% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/laser.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Laser Lights</b>
						</h5>
						<p>Upto 60% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/hookah.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Hookahs &amp; Bongs</b>
						</h5>
						<p>Under &#8377;599</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-11 End -->

		<!-- Row-12 Start -->
		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"><small>Fashion
								Accessories</small></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="btn btn-primary">View All</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Row-12 End -->

		<!-- Row-13 Start -->
		<div class="row" align="center">
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/sunglass.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Ray-Ban, Fastrack ...</b>
						</h5>
						<p>20-60% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/belt.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Cross, Woodland ...</b>
						</h5>
						<p>Top Rated</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/watch1.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Casio, Maxima ...</b>
						</h5>
						<p>Upto 50% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/watch2.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Casio, Fastrack ...</b>
						</h5>
						<p>10-50% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/watch3.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Titan, Fastrack ...</b>
						</h5>
						<p>20-80% off</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="thumbnail">
					<img src="images/watch4.jpeg" class="img-responsive">
					<div class="caption">
						<h5>
							<b>Fastrack</b>
						</h5>
						<p>Under &#8377;999</p>
						<button class="btn btn-primary view-btn">View</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-13 End -->

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