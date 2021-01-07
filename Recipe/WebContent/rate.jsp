<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String id1=request.getParameter("id");
String rate1=request.getParameter("rating");
String comment=request.getParameter("comment");
int id = Integer.parseInt(id1);
int rate = Integer.parseInt(rate1);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
String sql ="INSERT INTO rating(username,recipe_id,rating,comment)values('"+username+"',"+id+","+rate+",'"+comment+"')";
String sql1 ="UPDATE rating SET rating = "+rate+", comment = '"+comment+"' Where username = '"+username+"' and recipe_id = "+id+"";
ResultSet resultSet = st.executeQuery("Select * From rating Where username = '"+username+"' and recipe_id = "+id+"");
if(!resultSet.next()){
	int i=st.executeUpdate(sql);
}
else{
int i=st.executeUpdate(sql1);
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<html>
<body>  
<a href="index.jsp?username=<%=username %>">Successfully rated....Click to back to the home page</a>
  
</body> 
</html>
