
<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String password = request.getParameter("password");
String lName = request.getParameter("lname");
String FName = request.getParameter("fname");
String email = request.getParameter("email");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");

Statement st=conn.createStatement();

String sql = "UPDATE users SET  password =  '"+password+"', last_name= '" + lName +"', first_name = '" + FName 
+"', email = '"+ email +"'WHERE username = '" +username+ "'" ;
	   st.executeUpdate(sql);

conn.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletion Completed</title>
</head>
<body>
<a href="profile.jsp?username=<%=username %>">Successfully edited....Click to back to the home page</a>
</body>
</html>
