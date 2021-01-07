<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String id = request.getParameter("recipeid");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
String sql = "Insert Into report (username,recipe_id) value('"+username+"',"+id+")";
int i = st.executeUpdate(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully reported</title>
</head>
<body>
<a href="index.jsp?username=<%=username %>">The report has been successfully insert into our database....Click to back to the home page</a>
</body>
</html>