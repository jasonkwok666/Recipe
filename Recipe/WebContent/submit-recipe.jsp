<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();

String[] category;
category = new String[16];
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM category");
while (rs.next()) {
    category[rs.getInt(1)] = rs.getString(2);
}
rs.close();
stmt.close();
conn.close();
%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Daily Recipes</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors/green.css" id="colors">


</head>

<body class="overflow-reset">
<form method="post" action="submit.jsp">
<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header id="header">

<!-- Container -->
<div class="container">

	<!-- Logo / Mobile Menu
	<div class="three columns">
		//<div id="logo">
			<h1><a href="index.html"><img src="images/logo.png" alt="Chow" /></a></h1>
		</div>
	</div> -->


<!-- Navigation
================================================== -->
<div class="thirteen columns navigation">
	
	<nav id="navigation" class="menu nav-collapse">
		<ul>
			<li><a href="index.jsp?username=<%=username %>">Home</a></li>



			<li><a href="#">Recipes</a>
				<ul>
					<li><a href="browse-recipes.jsp?username=<%=username %>">Browse Recipes</a></li>
				</ul>
			</li>

			<li><a href="submit-recipe.jsp?username=<%=username %>" id="current">Submit Recipe</a></li>

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


<!-- Titlebar
================================================== -->
<section id="titlebar">
	<!-- Container -->
	<div class="container">

		<div class="eight columns">
			<h2>Submit Recipe</h2>
		</div>

		<div class="eight columns">
			<nav id="breadcrumbs">
				<ul>
					<li>You are here:</li>
					<li><a href="#">Home</a></li>
					<li>Submit Recipe</li>
				</ul>
			</nav>
		</div>

	</div>
	<!-- Container / End -->
</section>



<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div class="submit-recipe-form">


			<!-- Recipe Title -->
			<h4>Recipe Title</h4>
			<nav class="title">
				<input class="search-field" type="text" placeholder="" name="title" required/>
			</nav>
			<div class="clearfix"></div>


			<div class="margin-top-25"></div>
						<div class="select">
				<h4>Creator</h4>	
				<select class="chosen-select-no-single" name=username>
					<option><%=username %></option>
				</select>
				<br>
			</div>
			


			<!-- Choose Category -->
			<div class="select">
				<h4>Choose Category</h4>	
				<select data-placeholder="Choose Category" class="chosen-select-no-single" name=category required>
				    <option value="0"></option>
					<%for(int i = 1; i < category.length; i++){ %>
					<option value=<%= i %>><%= category[i] %></option>
					<%}%>
					
				</select>
				<select data-placeholder="Choose Category" class="chosen-select-no-single" name=category1>
				    <option value="0">Null</option>
					<%for(int i = 1; i < category.length; i++){ %>
					<option value=<%= i %>><%= category[i] %></option>
					<%}%>
				</select>
				<select data-placeholder="Choose Category" class="chosen-select-no-single" name=category2>
				    <option value="0">Null</option>
					<%for(int i = 1; i < category.length; i++){ %>
					<option value=<%= i %>><%= category[i] %></option>
					<%}%>
				</select>
			</div>


			<div class="margin-top-25"></div>


			<!-- Short Summary -->
			<h4>Description</h4>
			<textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true" required></textarea>


			<div class="margin-top-25"></div>



			<!-- Ingredients -->
<fieldset class="addrecipe-cont" name="ingredients">
				<h4>Ingredients:</h4>

				<table id="ingredients-sort">

					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name" tabindex="5" type="text" placeholder="Name of ingredient" required/> </td>
						<td><input name="ingredient_note" tabindex="6" type="text" placeholder="Notes (quantity, additional info)" required/></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>
					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name1" tabindex="5" type="text" placeholder="Name of ingredient" /> </td>
						<td><input name="ingredient_note1" tabindex="6" type="text" placeholder="Notes (quantity, additional info)"/></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>
					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name2" tabindex="5" type="text" placeholder="Name of ingredient" /> </td>
						<td><input name="ingredient_note2" tabindex="6" type="text" placeholder="Notes (quantity, additional info)" /></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>
					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name3" tabindex="5" type="text" placeholder="Name of ingredient" /> </td>
						<td><input name="ingredient_note3" tabindex="6" type="text" placeholder="Notes (quantity, additional info)" /></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>
					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name4" tabindex="5" type="text" placeholder="Name of ingredient" /> </td>
						<td><input name="ingredient_note4" tabindex="6" type="text" placeholder="Notes (quantity, additional info)" /></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>

				</table>


			</fieldset>


			<div class="margin-top-25"></div>

						
			<button  type="submit" class="submit">Submit</button>

		</div>
	</div>
</div>



<!-- Java Script
================================================== -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/jquery.superfish.js"></script>
<script src="js/jquery.royalslider.min.js"></script>
<script src="js/responsive-nav.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/chosen.jquery.min.js"></script>
<script src="js/jquery.tooltips.min.js"></script>
<script src="js/custom.js"></script>


<!-- WYSIWYG Editor -->
<script type="text/javascript" src="scripts/jquery.sceditor.bbcode.min.js"></script>
<script type="text/javascript" src="scripts/jquery.sceditor.js"></script>
<script src="js/switcher.js"></script>

<br><br><br><br><br>
</body>
</html>
