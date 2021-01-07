<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username3");
String category=request.getParameter("category");
String ingredient=request.getParameter("ingredient");
int cate = Integer.parseInt(category);
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

			<h2 align="center"><font><strong>Chef Menu</strong></font></h2>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
}
</style>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Title</font></b></td>
<td><b><font color="white">Chef</font></b></td>
<td><b><font color="white">Date</font></b></td>
</tr>
<%
try{ 
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
String sql ="SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC";
if(cate != 0){
	sql = "SELECT * From (SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC) AS a, inside Where inside.category_id = "+cate+" and a.recipe_id = inside.recipe_id";
}
if(ingredient != null){
	sql = "SELECT * From (SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC) AS a, include Where include.ingredient_id = (SELECT ingredient_id FROM ingredients where name = '"+ingredient+"') and a.recipe_id = include.recipe_id";
}
if(ingredient != null && cate != 0){
	sql = "SELECT * From (SELECT recipes.recipe_id,recipes.title,createdby.username,createdby.date FROM recipes,createdby where recipes.recipe_id = createdby.recipe_id Order by createdby.date DESC) AS a, include,inside Where include.ingredient_id = (SELECT ingredient_id FROM ingredients where name = '"+ingredient+"') and a.recipe_id = include.recipe_id and a.recipe_id = inside.recipe_id and category_id = "+cate+"";
}
ResultSet resultSet = st.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><a href="recipe.jsp?username=<%=username%>&recipeid=<%=resultSet.getString("recipe_id") %>"><font color="blue"><%=resultSet.getString("title") %></font></a></td>
<td><font color="purple"><%=resultSet.getString("username") %></font></td>
<td><font color="green"><%=resultSet.getString("date") %></font></td>

</tr>

<% 

}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
			
<br><br><br>
</body>

<script src="js/login.js"></script>
</html>
