<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar1">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#"><small>Contact Us on +91
				40 66217777</small></a>
	</div>

	<div class="collapse navbar-collapse" id="myNavbar1">
		<ul class="nav navbar-nav navbar-right">
			<%
				session = request.getSession();
				String name = (String) session.getAttribute("NAME");
				if (name == null) {
			%>
			<li><a href="SignInSignUpForms.jsp"><span
					class="glyphicon glyphicon-log-in"></span> SIGN IN</a></li>
			<li><a href="SignInSignUpForms.jsp"> <span
					class="glyphicon glyphicon-user"></span> SIGN UP
			</a></li>
			<%
				} else {
			%>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">Welcome <%=name%> <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li><a href="CustomerAccount.jsp">My Account</a></li>
					<li><a href="CustomerAccount.jsp">Change Password</a></li>
					<li><a href="logout">Log Out</a></li>
				</ul></li>
			<%
				}
			%>

			<li><a href="#"> <i class="fa fa-facebook"></i>
			</a></li>
			<li><a href="#"> <i class="fa fa-google-plus"></i>
			</a></li>
			<li><a href="#"> <i class="fa fa-twitter"></i>
			</a></li>
			<li><a href="#"> <i class="glyphicon glyphicon-envelope"></i>
			</a></li>
		</ul>
	</div>
</nav>