<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String id=request.getParameter("recipeid");
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
<form method="post" action="rate.jsp">
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
<td><b><font color="white">Add to favorite?</font></b></td>
<td><b><font color="white">Subscribe the Chef?</font></b></td>
<td><b><font color="white">Report</font></b></td>

</tr>
<%
try{ 
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
Statement st3=conn.createStatement();
Statement st4=conn.createStatement();
Statement st5=conn.createStatement();
String sql ="SELECT recipes.title,createdby.username FROM recipes,createdby where recipes.recipe_id= '"+id+"' and createdby.recipe_id= '"+id+"'";
String sql1 ="SELECT ingredients.name,include.measurement FROM include,ingredients where ingredients.ingredient_id = include.ingredient_id and include.recipe_id= '"+id+"'";
String sql2 ="SELECT description FROM recipes where recipe_id= '"+id+"'";
String sql3 ="SELECT AVG(rating) FROM rating where recipe_id= '"+id+"'";
String sql4 ="SELECT username,comment FROM rating where recipe_id= '"+id+"'";
String sql5 ="SELECT name FROM category,inside where inside.recipe_id= '"+id+"' and inside.category_id = category.category_id";
ResultSet resultSet = st.executeQuery(sql);
ResultSet resultSet1 = st1.executeQuery(sql1);
ResultSet resultSet2 = st2.executeQuery(sql2);
ResultSet resultSet3 = st3.executeQuery(sql3);
ResultSet resultSet4 = st4.executeQuery(sql4);
ResultSet resultSet5 = st5.executeQuery(sql5);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><font color="blue"><%=resultSet.getString(1) %></font></td>
<td><font color="Black"><%=resultSet.getString(2) %></font></td>
<td><a href="addfavorite.jsp?username=<%=username%>&recipeid=<%=id %>"><font color="blue">Add</font></a></td>
<td><a href="subscribe.jsp?username=<%=username%>&username1=<%=resultSet.getString(2) %>"><font color="blue">Subscribe</font></a></td>
<td><a href="report.jsp?username=<%=username%>&recipeid=<%=id %>"><font color="blue">report</font></a></td>
</tr>

<% 
}
%>
</style>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Category</font></b></td>

</tr>
<%
while(resultSet5.next()){
%>
<tr bgcolor="#DEB887">
<td><font color="brown"><%=resultSet5.getString(1) %></font></td>
</tr>

<% 
}
%>
</table>
<%
%>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Ingredient</font></b></td>
<td><b><font color="white">Measurement</font></b></td>
</tr>
<%
while(resultSet1.next()){
%>
<tr bgcolor="#DEB887">
<td><font color="red"><%=resultSet1.getString(1) %></font></td>
<td><font color="green"><%=resultSet1.getString(2) %></font></td>
</tr>
<% 
}
%>
</table>
<%
while(resultSet2.next()){
%>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Description</font></b></td>
</tr>
<tr bgcolor="#DEB887">
<td><font color="black"><%=resultSet2.getString(1) %></font></td>
</tr>
</table>
<% 
}
while(resultSet3.next()){
	String myRating = resultSet3.getString(1);
	//
	if(myRating != null){
		myRating = myRating.substring(0, 4);
	}//end if
	else{
		myRating = "This recipe has No rating yet, be the first one to make a comment.";
	}
%>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">Rating</font></b></td>
</tr>
<tr bgcolor="#DEB887">
<td><font color="red"><%= myRating %></font></td>
</tr>
</table>
<% 
}
%>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:100%">
<tr>

</tr>
<tr bgcolor="#A52A2A" font color = "white">
<td><b><font color="white">User</font></b></td>
<td><b><font color="white">Comment</font></b></td>
</tr>
<%
while(resultSet4.next()){
%>

<tr bgcolor="#DEB887">
<td><font color="purple"><%=resultSet4.getString(1) %></font></td>
<td><font color="black"><%=resultSet4.getString(2) %></font></td>
</tr>
<% 
}
%>
</table>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<br>
<h4 class="headline">Rate this recipe</h4>
<span class="line rb margin-bottom-35"></span>
<div class="clearfix"></div>

<div class="margin-top-25"></div>
			<div class="select">
	<h4>Recipe Code</h4>	
	<select class="chosen-select-no-single" name=id>
		<option><%=id %></option>
	</select>
</div>
<div class="margin-top-25"></div>
			<div class="select">
	<h4>Rater</h4>	
	<select class="chosen-select-no-single" name=username>
		<option><%=username %></option>
	</select>
</div>
<br>

<div class="select">
	<h4>Rating</h4>	
	<select data-placeholder="rating score" class="chosen-select-no-single" name=rating>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
	</select>
	<br><br>
	<h4>Comment</h4>
	<textarea class="WYSIWYG" name="comment" cols="40" rows="3" id="comment" spellcheck="true" required></textarea>
<br><br>
 	<button  type="submit" class="submit">Rate and Comment</button>

	<div class="margin-top-25"></div>
	<br><br><br><br>
</div>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/jquery.superfish.js"></script>
<script src="js/jquery.royalslider.min.js"></script>
<script src="js/responsive-nav.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/chosen.jquery.min.js"></script>
<script src="js/jquery.tooltips.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.pricefilter.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/custom.js"></script>


<!-- WYSIWYG Editor -->
<script type="text/javascript" src="scripts/jquery.sceditor.bbcode.min.js"></script>
<script type="text/javascript" src="scripts/jquery.sceditor.js"></script>
</body>
</html>
