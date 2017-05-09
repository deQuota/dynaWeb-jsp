<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>

<html>
	<head>
	
	 <title>Done</title>
	 <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/images/shoe-152-173952.png"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style1.css"></link>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"></link>
	
	</head>
	<body>
	<header class="navbar navbar-inverse">
			<div class="container">
				<nav>
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://www.adidas.de/"><image src="${pageContext.request.contextPath }/images/Adidas-Logo.png" alt="adidaslogo"></image></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="https://en.wikipedia.org/wiki/Adidas">Who are We<span class="sr-only">(current)</span></a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Countries <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="http://www.adidas.com/us/men-shoes">US</a></li>
            <li><a href="http://www.adidas.co.uk/">UK</a></li>
            <li><a href="http://www.adidas.de/">Germany</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="http://www.global.adidas.com/">Global</a></li>
            
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
			</div>
		</header>
	<div class="container">
		<image src="${pageContext.request.contextPath }/images/thanks.jpg"></image>
		<h1>Thank you <span style="color:white;"> <%=request.getParameter("custName") %>!</span></h1>
		<p>We have recieved your payemnt of <span style="color:green;">$<%=request.getParameter("paidAmnt") %> </span></p>
		<!--  <p>Our team try our best to deliver your item ASAP</p>-->
		<p>Confirmation email was sent to<span style="color:green;"> <%=request.getParameter("custEmail") %> </span></p>
		<p>Shoeza Company Ltd. 2016</p>
		<a href="adidasServlet">Home</a>
	</div>
	
	<script   src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
	<footer class="container-fluid text-center">
		<h5>Shoeza Company (pvt) Ltd.</h5>
		<p>Copyrights Recieved</p>
	</footer>
</html>
