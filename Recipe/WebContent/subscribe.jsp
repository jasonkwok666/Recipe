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
ResultSet rs = st1.executeQuery("Select * from subscribe where creator_username = '"+username+"' and subscriber_username = '"+username1+"'");
String sql = "Insert into subscribe(creator_username,subscriber_username) value('"+username+"','"+username1+"')";
int i = st.executeUpdate(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully unsubscribed</title>
</head>
<body>
<a href="index.jsp?username=<%=username %>">Successfully subscribed....Click to back to the home page</a>
</body>
</html>