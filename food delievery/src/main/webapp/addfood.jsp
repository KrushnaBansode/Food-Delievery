<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add food</title>

</head>

<body>
	<jsp:include page="adminheader.jsp"></jsp:include>

	<form action="addfooddatabase.jsp" method="post"
		enctype="multipart/form-data">
		<fieldset>
			<legend>
				<b><center>Food Delivery</center></b>
			</legend>
		</fieldset>
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<br>
					<legend>
						<strong><label>Add Food</strong></label>
					</legend>
					<b> <label>Food Name</b></label><br> <input type="text"
						placeholder="Enter Food Name" id="name" name="name"
						 class="form-control"><br>  
						<b> <label>Choose Mess OR Restaurant</b></label><br> 
						<select onchange="getRes()" class="form-control" name="messorres" id="messorres">
							<option value=""></option>
							<option value="MESS">MESS</option>
							<option value="RESTAURANT" >RESTAURANT</option>
						</select>
						  <br>
						  <label>Choose Mess / Restaurant</b></label><br> 
						<select  class="form-control" name="whichRes" id="whichRes">
							<option></option>
							<option value="" ></option>
							 
						</select>
						  <br>
						   <label>Photo:</label><input
						type="file" id="photo" name="photo"><br>
						 <b><label>Price</b></label><br>
					<input type="number" name="price" placeholder="Price" id="price"
						name="price" , class="form-control"><br> <b><label>Description</b></label><br>
					<textarea rows="5" cols="40" name="description"
						class="form-control" placeholder="Enter The Description" id="desc"></textarea>
					<br>
					<br> <input type="submit" class="btn btn-success"
						onclick="return gett()" id="submit"><br>
					<br>
				</div>
				<div class="col-md-3"></div>

			</div>
		</div>
	</form>
	<script>
		function gett() {
			var a = document.getElementById("name").value;
			var b = document.getElementById("price").value;
			var c = document.getElementById("desc").value;
			if (a == "") {
				alert("please fill name");
				return false;
			}
			if (b == "") {
				alert("please fill price");
				return false;
			}
			if (c == "") {
				alert("please fill desc");
				return false;
			}
		}
		document.getElementById("whichRes").disabled = true;
		function getRes(){
			var x = document.getElementById("messorres").value;
 			if(x=="MESS" || x==""){
 				getValues1();
			}else if(x=="RESTAURANT"){
				getValues();
			} 
		}
		 
		function getValues(){
			document.getElementById("whichRes").disabled = false;
			$.ajax({
				url: 'getRestaurantName.jsp',
				method: 'post',
				success: function(response){
 					$('#whichRes').html(response);  
		            
				}
			});
		}
		function getValues1(){
			document.getElementById("whichRes").disabled = false;
			$.ajax({
				url: 'getMessName.jsp',
				method: 'post',
				success: function(response){
 					$('#whichRes').html(response);  
		            
				}
			});
		}
	</script>
</body>
</html>