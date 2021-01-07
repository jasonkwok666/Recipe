<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String id = request.getParameter("recipeid");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");

Statement st=conn.createStatement();

String sql = "DELETE FROM include WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);
	   sql = "DELETE FROM inside WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);
	   sql =  "DELETE FROM createdby WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);
	   sql =  "DELETE FROM bookmarks WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);
	   sql =  "DELETE FROM report WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);	   
	   sql =  "DELETE FROM rating WHERE recipe_id = '"+id+"'";
	   st.executeUpdate(sql);
	   sql =  "DELETE FROM recipes WHERE recipe_id = '"+id+"'";
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
<a href="profile.jsp?username=<%=username %>">Successfully deleted....Click to back to the home page</a>
</body>
</html>
