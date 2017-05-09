<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" import="javax.servlet.*"
	import=" javax.servlet.http.*" import="com.adidas.servlet.Sneaker"%>

<html>
<head>
<title>Buy it!</title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/images/shoe-152-173952.png"/>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css"></link>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/verify.js"></script>
</head>
<body>
	<header class="navbar navbar-inverse">
		<div class="container">
			<nav>
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="http://www.adidas.de/"><image
								src="${pageContext.request.contextPath }/images/Adidas-Logo.png"
								alt="adidaslogo"></image></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a
								href="https://en.wikipedia.org/wiki/Adidas">Who are We<span
									class="sr-only">(current)</span></a></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Countries <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="http://www.adidas.com/us/men-shoes">US</a></li>
									<li><a href="http://www.adidas.co.uk/">UK</a></li>
									<li><a href="http://www.adidas.de/">Germany</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="http://www.global.adidas.com/">Global</a></li>

								</ul></li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
						<ul class="nav navbar-nav navbar-right">

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>

	</header>

	<div class="container">
		<!--  <div class="row">
		<div class="col-sm-8">
		
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/Tlc2geGRwrk?autoplay=1&loop=1&playlist=g1BoUWxJ9MY"></iframe>
		</div>
		</div>
		</div>
		<div class="row">
		<p>This shoe is specially designed by our expert for outdoor activities.</p>
		<p>The company will give 2years* warranty</p>
		<p>Item will be shipped after one day from the purchase date</p>
		<p>*Conditions Apply. Shoeza Company 2016</p>
		<a href="done.html" class="btn btn-success btn-lg" role="button">Confirm Order</a> <a href="index.html" class="btn btn-primary btn-lg" role="button">Back</a>
		</div>
		-->
		<%
			ArrayList<Sneaker> productList = (ArrayList) request.getAttribute("products");
			int curID = Integer.parseInt(request.getParameter("id")) - 1;
			int curPrice = productList.get(curID).getsPrice();
			String curName = productList.get(curID).getsName();
			String curDis = productList.get(curID).getsDesc();
			String curImg = productList.get(curID).getsImgPth();
			String curYutb = productList.get(curID).getsYouTubeVd();
		%>
		<!-- 
		<h1><%=productList.size()%>
		</h1>
		<h1><%=productList.get(curID).getsName()%>
		</h1>
		 -->
		<div class="col-sm-4 col-lg-4 col-md-4">
			<div class="thumbnail">
				<img src="${pageContext.request.contextPath}/images/<%=curImg %>"
					alt="">
				<div class="caption">
					<h3 class="pull-right">
						<h2>
							<a href="#"><%=curName%></a>
						</h2>
						<%=curDis%>
					</h3>
				</div>

			</div>
		</div>

		<p>This shoe is specially designed by our expert for outdoor
			activities.</p>
		<p>The company will give<span style="color:green;"> 2years* </span>warranty</p>
		<p>Item will be shipped after one day from the purchase date</p>
		<p>You can watch a brief<span style="color:green;"> introduction video</span></p>
		<p>About this Shoe from below</p>
		<p>*Conditions Apply. Shoeza Company 2016</p>
		

		<form class="form-inline" name="payForm" action="done.jsp" method="POST">
			<div class="form-group">
				<label class="sr-only" for="exampleInputEmail3">Email
					address</label> <input type="email" class="form-control"
					name="custEmail" placeholder="Enter email">
			</div>
			<div class="form-group">
				<label class="sr-only" for="exampleInputPassword3">Name</label> <input
					type="text" class="form-control" name="custName"
					placeholder="Name">
			</div>
			<div class="checkbox">
				<label> <input type="checkbox"> Remember me
				</label>
			</div>
			<br>
			<br> <label class="sr-only" for="exampleInputAmount">Amount
				(in dollars)</label>
			<div class="input-group">
				<div class="input-group-addon">$</div>
				<input type="text" class="form-control" name="paidAmnt"
					placeholder="<%=curPrice%>">
				<div class="input-group-addon">.00</div>
			</div>

			<button type="submit" class="btn btn-success">Pay</button>
		    <a href="adidasServlet" class="btn btn-primary" role="button">Back</a>
		    
		</form>

	<div class="row">
		
		<div class="col-sm-11">
		<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/<%=curYutb %>?autoplay=1&loop=1&playlist=g1BoUWxJ9MY"></iframe>
		</div>
		</div>
		</div>
	
	</div>

	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
</body>
<footer class="container-fluid text-center">
		<h5>Shoeza Company (pvt) Ltd.</h5>
		<p>Copyrights Recieved</p>
	</footer>
</html>
