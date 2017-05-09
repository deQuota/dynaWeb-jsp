<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"
	import="com.adidas.servlet.Sneaker"%>
<html>
<head>
<title>Shoeza</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css"></link>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous"></link>
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
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${pageContext.request.contextPath }/images/rZTtIAM.jpg"
						alt="shoe image">
					<div class="carousel-caption">
						<h3>Football Shoes</h3>
						<p>We are pumping up Football all around the world</p>
					</div>
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath }/images/bb.jpg"
						alt="shoe image">
					<div class="carousel-caption">
						<h3>Sneakers</h3>
						<p>Walk out the street</p>
					</div>
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath }/images/gg.jpg"
						alt="shoe image">
					<div class="carousel-caption">
						<h3>Star Wars Edition</h3>
						<p>Join to the fantasy</p>
					</div>
				</div>

				<div class="item">
					<img src="${pageContext.request.contextPath }/images/dd.jpg"
						alt="shoe image">
					<div class="carousel-caption">
						<h3>Brazuca</h3>
						<p>Official World Cup Sponser</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	  <div class="container">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
		</ol>
	</div>
	
	
	<div class="container">
		
	


			<div class="row">
			
				<div class="col-sm-3">
				<div class="list-group">
					<a href="#" class="list-group-item active list-group-item success">
						Just Shoes </a> <a href="#" class="list-group-item">Men's Sports</a> <a
						href="#" class="list-group-item">Women's Sports</a> <a href="#"
						class="list-group-item">Sneakers</a>
				</div>
			   </div>
				<%
					ArrayList<Sneaker> productList = (ArrayList) request.getAttribute("products");
				%>
				<%
					for (int i = 0; i < 3; i++) {
				%>
				<div class="col-sm-3 col-lg-3 col-md-3">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/images/<%=productList.get(i).getsImgPth() %>"
							alt="">
						<div class="caption">
							<h4 class="pull-right">
								$<%=productList.get(i).getsPrice()%></h4>
							<h4>
								<a href="#"><%=productList.get(i).getsName()%></a>
							</h4>
							<p>
								<%=productList.get(i).getsDesc()%>
							</p>
						</div>
						<div class="ratings">
							<a href="${pageContext.request.contextPath}/buy.jsp"
								class="btn btn-success">I like it!</a>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
			
			
			<div class="row">
			
			
				<%
					for (int i = 0; i < productList.size(); i++) {
				%>
				<div class="col-sm-3 col-lg-3 col-md-3">
					<div class="thumbnail">
						<img
							src="${pageContext.request.contextPath}/images/<%=productList.get(i).getsImgPth() %>"
							alt="">
						<div class="caption">
							<h4 class="pull-right">
								$<%=productList.get(i).getsPrice()%></h4>
							<h4>
								<a href="#"><%=productList.get(i).getsName()%></a>
							</h4>
							<p>
								<%=productList.get(i).getsDesc()%>
							</p>
						</div>
						<div class="ratings">
							<a href="${pageContext.request.contextPath}/BuyServlet?id=<%=productList.get(i).getsID()%>"
								class="btn btn-primary">Order Now</a>
						</div>
					</div>
				</div>
				<%
					}
				%>
			   </div>
			
			</div>
			
			
			






			<!--  
	<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s1.jpg" alt="...">
      <div class="caption">
        <h3>Neo Splash</h3>
        <p>$120</p>
        <p><a href="${pageContext.request.contextPath }/buy.jsp" class="btn btn-success" role="button">Buy</a> <a href="${pageContext.request.contextPath }/buy.jsp" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s4.jpg" alt="...">
      <div class="caption">
        <h3>J Walker</h3>
        <p style="color:red;">$90</p>
        <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s5.jpg" alt="...">
      <div class="caption">
        <h3>Black Sider</h3>
        <p>$250</p>
       <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  
	</div>
	
	
	</div>
	<div class="container">
		<div class="row">
		<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s6.jpg" alt="...">
      <div class="caption">
        <h3>Blaze</h3>
        <p style="color:red;">$300</p>
        <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s7.jpg" alt="...">
      <div class="caption">
        <h3>OneS</h3>
        <p style="color:red;">$120</p>
        <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s8.jpg" alt="...">
      <div class="caption">
        <h3>BB High Top</h3>
        <p style="color:red;">$200</p>
        <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="${pageContext.request.contextPath }/images/s9.jpg" alt="...">
      <div class="caption">
        <h3>OzoN</h3>
        <p style="color:red;">$225</p>
        <p><a href="buy.html" class="btn btn-success" role="button">Buy</a> <a href="buy.html" class="btn btn-primary" role="button">Detail</a></p>
      </div>
    </div>
  </div>
  -->

		</div>

	</div>

	<footer class="container-fluid text-center">
		<h5>Shoeza Company (pvt) Ltd.</h5>
		<p>Copyrights Recieved</p>
	</footer>


	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>

</body>
</html>