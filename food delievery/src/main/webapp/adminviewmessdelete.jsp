<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery", "root", "root");

		String sql = "delete from addmess where id=?";
		String messorres = request.getParameter("mr");
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, id);

		int done = ps.executeUpdate();
		if (done > 0) {
 
	
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
		}else if(done < 0 && request.getParameter("mr").equals("MESS")){
			%>
			<script type="text/javascript">
			alert("Fail Try Again");
				location.href = "viewmess.jsp";
			</script>
			<%
		}else if(done < 0 && request.getParameter("mr").equals("RESTAURANT")){
			%>
			<script type="text/javascript">
			alert("Fail Try Again");
				location.href = "viewRest.jsp";
			</script>
			<%
		}
	%>


</body>
</html>