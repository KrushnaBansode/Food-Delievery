<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view mess</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrapcss.css">

</head>
<body>
	<jsp:include page="adminheader.jsp"></jsp:include>
	<legend>
		<b><center>Food Delivery</center></b>
	</legend>
	</fieldset>
	<h3>
		<b><center>View Restaurant's</center></b>
	</h3>
	<table class="table table-striped table-bordered table-hover">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>description</th>
			<th style="width: 30%;">photo</th>
			<th>View</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Status</th>
		</tr>
		<tr>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery", "root", "root");
				String sql = "select * from addmess where messorres='RESTAURANT' group by name";
				PreparedStatement ps = con.prepareStatement(sql);
				int i = 1;
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<td><%=i%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><img src="<%=rs.getString(5)%>"
				style="height: 150px; width: 200px;"></td>
			<td><a href="viewRestByName.jsp?n=<%=rs.getString(2)%>">View</a></td>
			<td><a href="adminviewmessupdate.jsp?id=<%=rs.getString(1)%>">Update</a></td>
			<td><a
				href="adminviewmessdelete.jsp?id=<%=rs.getString(1)%>&mr=<%=rs.getString(7)%>">Delete</a></td>
			<%
				if (rs.getString(6).equals("hide")) {
			%>
			<td><a
				href="adminviewmessstatus.jsp?mess_id=<%=rs.getString(1)%>&status=<%=rs.getString(6)%>&mr=<%=rs.getString(7)%>"
				class="btn btn-info btn-xs">Show</a></td>
			<%
				} else {
			%>
			<td><a
				href="adminviewmessstatus.jsp?mess_id=<%=rs.getString(1)%>&status=<%=rs.getString(6)%>&mr=<%=rs.getString(7)%>"
				class="btn btn-primary btn-xs">Hide</a></td>
			<%
				}
			%>
		</tr>


		<%
			i++;
			}
		%>
	</table>
</body>
</html>