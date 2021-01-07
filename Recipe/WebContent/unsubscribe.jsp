<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String username1 = request.getParameter("username1");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
String sql = "DELETE FROM subscribe WHERE creator_username = '"+username+"' and subscriber_username = '"+username1+"'";
int i = st.executeUpdate(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully unsubscribed</title>
</head>
<body>
<a href="profile.jsp?username=<%=username %>">Successfully unsubscribed....Click to back to the home page</a>
</body>
</html>