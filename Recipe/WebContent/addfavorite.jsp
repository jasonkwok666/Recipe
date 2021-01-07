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
ResultSet rs = st1.executeQuery("Select * from bookmarks where username = '"+username+"' and recipe_id = '"+id+"'");
String sql = "Insert into bookmarks(username,recipe_id) value('"+username+"','"+id+"')";
if(!rs.next()){
int i = st.executeUpdate(sql);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Added to your favorite</title>
</head>
<body>
<a href="index.jsp?username=<%=username %>">Successfully added....Click to back to the home page</a>
</body>
</html>