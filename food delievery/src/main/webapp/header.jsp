<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Online Food delivery</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="I wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montez' rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
		  		 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<!-- js -->
		 <script src="js/bootstrap.js"></script>
	<!-- js -->
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->
		<div class="header-info">
			<div class="container">
					<div class="header-top-in">
						
						<ul class="support">
							<li><a href="#"><i class="glyphicon glyphicon-envelope"> </i>example@gmail.com</a></li>
							<li><span><i class="glyphicon glyphicon-earphone" class="tele-in"> </i>1234567890</span></li>			
						</ul>
						<%
						if(session.getAttribute("user_id")==null){
						%>
						<ul class=" support-right">
							<li><a href="registration.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Login</a></li>
							
						</ul>
						<%
						}else{
						%>
						<ul class=" support-right">
							<li><a href="userProfile.jsp?id=<%=session.getAttribute("user_id") %>"><i class="glyphicon glyphicon-user" class="men"> </i><%=session.getAttribute("user_name") %><span class="caret"></span></a></li>
							<li><a href="user_logout.jsp" style="color:red;">Logout</a></li>
						</ul>
						<%} %>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>	
<div class="header">
	<div class="header-top">

			<div class="header-bottom">
			<div class="container">			
				<div class="logo">
					<h1><a href="index.jsp"><span>Online Food delivery</span></a></h1>
				</div>
		 <!---->
		 
			<div class="top-nav">
				<ul class="memenu skyblue">
				    <li class=""><a href="index.jsp" class="btn btn-info">Home</a></li>
					<li class="grid"><a href="about.jsp" class="btn btn-info">About</a>
					<li class="grid"><a href="mess.jsp" class="btn btn-info">Mess</a>
					<li class="grid"><a href="food.jsp" class="btn btn-info">Food</a>
					<li class="grid"><a href="gallery.jsp" class="btn btn-info">Gallery</a>
						
					</li>
					<li class="grid"><a href="Contact.jsp" class="btn btn-info">Contact</a>
						
					</li>
		
					

					
				</ul>
				<div class="clearfix"> </div>
			</div>
					<!---->
					
<div class="clearfix"> </div>
					<!---->
				</div>
			<div class="clearfix"> </div>
		</div>
		</div>

<!----	<div class="banner">
		<div class="banner-top">
	         <h2>Food delivery</h2>
	         <p>Goggles or safety glasses are forms of protective eyewear<span>fthat usually enclose or protect the area surrounding the eye in order to prevent particulates.</span></p>
</div>
	<div class="now">
	         <a class="morebtn" href="product.html">Explore</a>
	         <a class="morebtn at-in" href="single.html">Shop Now</a>
	         <div class="clearfix"> </div>
	         </div>
 	</div>	
 				<div class="clearfix"> </div>	
			  !--></div>