<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contact</title>
</head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<body  >
<jsp:include page="header1.jsp"></jsp:include>
<div class="header-info">
			<div class="container">
					<div class="header-top-in">
						<div class="row">
						<div class="col-md-4"><h3><span class="glyphicon glyphicon-envelope"></span>Email :</h3>
						<h4><a href="mailto: principal@msbecl.ac.in" style="color:blue;"> principal@msbecl.ac.in</a></h4>
						</div>
						
						<div class="col-md-4">
						
						<h3><span class="glyphicon glyphicon-earphone"></span>Contact :</h3>
						<h4><a href="tel:+912382221846" style="color:blue;">+912382221846</a></h4>
						</div>
						
						<div class="col-md-4">
						
						<h3><span class="glyphicon glyphicon-home"></span>Address:</h3>
						<h4 style="color:blue;">Barshi Rd, Pakharsangvi, Latur, Maharashtra 413531</h4> 
						
						
						</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>	
<br>
<div class="container">
<div class="row">

<div class="col-md-6 order-md-last d-flex">
          
<center><label><strong>Contact</strong></label></center>

<form  action="contactdatabase.jsp" method="post" >
<b><label>Name</label></b><br>
<input type="text" placeholder="Enter Your Name" id="name" name="name" class="form-control"><br>
<b><label>Mobile</label></b><br>
<input type="number" placeholder="Mobile" id="mobile" name="mobile" class="form-control"><br>
<b><label>Message</label></b><br>
<textarea rows="5" cols="40" name="message" class="form-control" placeholder="Enter The Message" id="message"></textarea><br><br>

<input type="submit" class="btn btn-success" onclick="return gett()">
<input type="reset" class="btn btn-danger" value="Cancel"><br>


</form>
  </div>
          
          <div class="col-md-6 d-flex">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3785.706990818349!2d76.51856641516925!3d18.406181977465852!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf81376c7206db%3A0x38889e92717bda45!2sM%20S%20Bidve%20Engineering%20College!5e0!3m2!1sen!2sin!4v1616226497483!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
</div></div>

<script>
function gett()
{
var a=document.getElementById("name").value; 
var b=document.getElementById("mobile").value;
var c=document.getElementById("message").value;

if(a=="")
{
alert("please fill your name");
return false;
}
else if(b.length!=10)
{
alert("please enter only ten digit of mobile number");
return false;
}
else if(c=="")
{
alert("please enter your message");
return false;
}

else
{
return true;
}
}
</script>
<br><br><br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>