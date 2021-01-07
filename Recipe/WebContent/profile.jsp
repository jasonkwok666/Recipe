<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username = request.getParameter("username");
String recipeid;
%>



<!DOCTYPE html>
<html lang="en"> 
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Daily Recipe</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors/green.css" id="colors">


</head>

<body>
<form method="post" action="editUserInf.jsp">
<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header id="header">

<!-- Container -->
<div class="container">





<div class="thirteen columns navigation">

	<nav id="navigation" class="menu nav-collapse">
		<ul>
			<li><a href="index.jsp?username=<%=username %>" id="current">Home </a></li>


			<li><a href="#">Recipes</a>
				<ul>
					<li><a href="browse-recipes.jsp?username=<%=username %>">Browse Recipes</a></li>
				</ul>
			</li>


			<li><a href="submit-recipe.jsp?username=<%=username %>">Submit Recipe</a></li>
					
			<!-- add userName===================================== -->
			<li><a href="#"><%= username %></a>
				<ul>
					<li><a href="profile.jsp?username=<%=username %>">View Profile</a></li>
					<li><a href="login.html">Sign out</a></li>
					
				</ul>
			</li>
		</ul>
	</nav>

</div>

</div>
<!-- Container / End -->
</header>





<!-- Content
================================================== -->
<div class="container">

	<!-- Masonry -->
	<div class="twelve columns">

		<!-- Headline -->
 		<h3 class="headline">Daily Recipes</h3>
		<span class="line rb margin-bottom-35"></span>
		<div class="clearfix"></div>

		<!-- Isotope -->
		<div class="isotope">

			
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>

<%
try{ 
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st = conn.createStatement();
// query to get user information
String sql = "SELECT * FROM users WHERE username = '" + username +"'";

ResultSet resultSetUserInfo  = st.executeQuery(sql);

while(resultSetUserInfo.next()){
%>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>
<h2 align="center"><font><strong><%=username %>'s information</strong></font></h2>
			<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">username</font></b></td>
<td><b><font color="white">My password</font></b></td>
<td><b><font color="white">Last Name</font></b></td>
<td><b><font color="white">First Name</font></b></td>
<td><b><font color="white">Email</font></b></td>
<td><b><font color="white">Edit</font></b></td>


<tr bgcolor="#DEB887">
<td><font color="black"><div name="textUserPass" contenteditable="true"><%= resultSetUserInfo.getString(1) %> </div> </font></td>
<td><font color="black"><%= resultSetUserInfo.getString(2) %> </font></td>

<td><font color="black"><%= resultSetUserInfo.getString(3)  %></font></td>
<td><font color="black"><%= resultSetUserInfo.getString(4)  %></font></td>
<td><font color="black"><%= resultSetUserInfo.getString(5)  %></font></td>

</tr>

<%} %>
<tr bgcolor="#DEB887">
<td><font color="black"><select class="chosen-select-no-single" name=username>
					           <option><%=username %></option>
				        </select>
</td>
<td><font color="black"><input type="text" name="password"/></font></td>
<td><font color="black"><input type="text" name="lname"/></font></td>
<td><font color="black"><input type="text" name="fname"/></font></td>
<td><font color="black"><input type="text" name="email"/></font></td>

<td><button  type="submit" class="submit">edit</button></td>
</table>
<h7 align="left"><font><strong>Click on the user's information to edit </strong></font></h7>

<h2 align="center"><font><strong><%=username %>'s Menu</strong></font></h2>

<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Title</font></b></td>
<td><b><font color="white">Chef</font></b></td>
<td><b><font color="white">Date</font></b></td>
<td><b><font color="white">Deletion</font></b></td>
</tr>
<%

    sql ="SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id and username = '"+username+"' Order by createdby.date DESC";

    ResultSet resultSet = st.executeQuery(sql);

while(resultSet.next()){
%>



<tr bgcolor="#DEB887">
<td><a href="recipe.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="blue"><%=resultSet.getString("title") %></font></a></td>
<td><font color="purple"><%=resultSet.getString("username") %></font></td>
<td><font color="green"><%=resultSet.getString("date") %></font></td>
<td><a href="delete.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="red">delete</font></a></td>

</tr>
<% 
}
%>
</table>
			
<br><br><br>
		<div class="isotope">

			<h2 align="center"><font><strong>Favorite Menu</strong></font></h2>
			<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Title</font></b></td>
<td><b><font color="white">Chef</font></b></td>
<td><b><font color="white">Date</font></b></td>
<td><b><font color="white">Deletion</font></b></td>
</tr>
<%

  sql ="Select * From (SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC) as a ,bookmarks where bookmarks.recipe_id = a.recipe_id and bookmarks.username = '"+username+"'";

 resultSet = st.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><a href="recipe.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="blue"><%=resultSet.getString("title") %></font></a></td>
<td><font color="purple"><%=resultSet.getString("username") %></font></td>
<td><font color="green"><%=resultSet.getString("date") %></font></td>
<td><a href="delete1.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="red">remove</font></a></td>

</tr>

<% 
}
%>
</table>
<br><br><br>


		<div class="isotope">

			<h2 align="center"><font><strong>Favorite Chef</strong></font></h2>
			<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Title</font></b></td>
<td><b><font color="white">Chef</font></b></td>
<td><b><font color="white">Date</font></b></td>
<td><b><font color="white">Unsubscribe</font></b></td>
</tr>
<%

   sql ="Select * From (SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC) as a ,subscribe where creator_username = '"+username+"' and subscribe.subscriber_username = a.username;";

  resultSet = st.executeQuery(sql);
  String username1 = "";
while(resultSet.next()){
	username1 = resultSet.getString("username");
%>
<tr bgcolor="#DEB887">
<td><a href="recipe.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="blue"><%=resultSet.getString("title") %></font></a></td>
<td><font color="purple"><%=username1 %></font></td>
<td><font color="green"><%=resultSet.getString("date") %></font></td>
<td><a href="unsubscribe.jsp?username=<%=username%>&username1=<%=username1 %>"><font color="red">unsubscribe</font></a></td>

</tr>

<% 
  } //while

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><br>
</body>

<script src="js/login.js"></script>
</html>
