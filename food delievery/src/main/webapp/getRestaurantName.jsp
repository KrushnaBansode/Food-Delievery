<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelievery","root","root");
	PreparedStatement ps=con.prepareStatement("select * from addmess where messorres='RESTAURANT'");
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		%>
		<option value="<%=rs.getString("name")%>"><%=rs.getString("name") %></option>
		<%
	}
%>