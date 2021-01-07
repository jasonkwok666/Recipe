<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String id = request.getParameter("recipeid");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
String sql = "DELETE FROM bookmarks WHERE recipe_id = '"+id+"' and username = '"+username+"'" ;
int i = st.executeUpdate(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletion Completed</title>
</head>
<body>
<a href="profile.jsp?username=<%=username %>">Successfully removed from your favorite list....Click to back to the home page</a>
</body>
</html>