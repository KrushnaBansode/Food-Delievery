<%@ page import="java.sql.*,path.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view mess submit</title>
</head>
<body>

	<%
		MultipartRequest m = new MultipartRequest(request, Path.messorresPath,
				1048 * 1048 * 1048);
		String name = m.getParameter("Name");
		String img = "image/" + m.getFilesystemName("photo");
		String img1 = m.getFilesystemName("photo");
		String price = m.getParameter("price");
		String description = m.getParameter("description");
		String messorres = m.getParameter("messorres");
		String id = m.getParameter("id");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery", "root", "root");
		String sql = "";
		PreparedStatement ps = null;

		if (img1 != null) {

			sql = "update addmess set Name=?, photo=?,price=?,description=?,messorres=? where id=?";
			ps = con.prepareStatement(sql);

			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, img);
			ps.setString(3, price);
			ps.setString(4, description);
			ps.setString(5, messorres);
			ps.setString(6, id);

		} else {
			sql = "update addmess set Name=?,price=?,description=? where id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, price);
			ps.setString(3, description);
 			ps.setString(4, id);

		}
		int done = ps.executeUpdate();

		if (done > 0 && messorres.equals("MESS")) {
	%>
	<script>
		alert("success");
		location.href = "viewmess.jsp";
	</script>

	<%
		} else if(done > 0 && messorres.equals("RESTAURANT")){
	%>
	<script>
	alert("success");
	location.href = "viewRest.jsp";
	</script>

	<%
		}else{
			%>
			<script>
			alert("fail");
			location.href = "adminviewmessupdate.jsp?id="+id;
			</script>

			<%
		}
	%>


</body>
</html>