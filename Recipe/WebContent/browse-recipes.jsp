<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
int i =0;
int j=0;
String[] category;
category = new String[18];
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM category");
while (rs.next()) {
    category[rs.getInt(1)] = rs.getString(2);
}

String[] ingredient;
ingredient = new String[50];
Statement st1 = conn.createStatement();
ResultSet rs1 = st1.executeQuery("SELECT name FROM ingredients");
while (rs1.next()) {
    ingredient[i] = rs1.getString(1);
    i++;
}

rs1.close();
st1.close();
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
<title>Chow</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors/green.css" id="colors">

<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body>
<form method="post" action="search.jsp">

<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header id="header">

<!-- Container -->
<div class="container">

	<!-- Logo / Mobile Menu -->
	<div class="three columns">
	</div>


<!-- Navigation
================================================== -->
<div class="thirteen columns navigation">

	<nav id="navigation" class="menu nav-collapse">
		<ul>
			<li><a href="index.jsp?username=<%=username %>">Home</a></li>



			<li><a href="#" id="current">Recipes</a>
				<ul>
					<li><a href="browse-recipes.jsp?username=<%=username %>">Browse Recipes</a></li>
				</ul>
			</li>



			<li><a href="submit-recipe.jsp?username=<%=username %>">Submit Recipe</a></li>
			
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
<section id="titlebar" class="browse-all">
	<!-- Container -->
	<div class="container">

		<div class="eight columns">
			<h2>Browse Recipes</h2>
		</div>

	</div>
	<!-- Container / End -->
</section>


<!-- Container -->
<div class="advanced-search-container">
	<div class="container">
		<div class="sixteen columns">
			<div id="advanced-search">

				<!-- Choose Category -->
				<div class="select">
					<label>Choose category</label>
					<select data-placeholder="Choose Category" class="chosen-select-no-single" name = category>
						<option value="0"></option>
						<%for(int k = 1; k < category.length; k++){ %>
					<option value=<%= k %>><%= category[k] %></option>
					<%}%>
					</select>
				</div>

				<!-- Choose ingredients -->
				<div class="select included-ingredients">
					<label>Select one or more ingredients that should be included in recipe</label>
					<select data-placeholder="Included Ingredients" class="chosen-select" multiple name = ingredient>
					<%while(ingredient[j] != null){ %>
						<option value="<%= ingredient[j] %>"><%= ingredient[j] %></option>
					<% j++;} %>
					</select>
				</div>
				
								<div class="select">
					<label>Search by</label>
					<select data-placeholder="Choose Category" class="chosen-select-no-single" name = username3>
						<option value="<%= username %>"><%= username %></option>
					</select>
				</div>

				
				<div class="clearfix"></div>

				<!-- Search Input -->
				<nav class="search-by-keyword">
					<form action="#" method="get">
						<button class="submit" type="submit"><span>Search for Recipes</span><i class="fa fa-search"></i></button>
					</form>
				</nav>
				<div class="clearfix"></div>				

					<div class="clearfix"></div>
					<div class="margin-top-10"></div>

				</div>
				<!-- Extra Search Options / End -->


			<div class="clearfix"></div>
			</div>

		</div>
	</div>
</div>


<div class="margin-top-35"></div>



</div>


</div>
<!-- Wrapper / End -->





<!-- Java Script
================================================== -->
<script src="scripts/jquery-1.11.0.min.js"></script>
<script src="scripts/jquery-migrate-1.2.1.min.js"></script>
<script src="scripts/jquery.superfish.js"></script>
<script src="scripts/jquery.royalslider.min.js"></script>
<script src="scripts/responsive-nav.js"></script>
<script src="scripts/hoverIntent.js"></script>
<script src="scripts/isotope.pkgd.min.js"></script>
<script src="scripts/chosen.jquery.min.js"></script>
<script src="scripts/jquery.tooltips.min.js"></script>
<script src="scripts/jquery.magnific-popup.min.js"></script>
<script src="scripts/jquery.pricefilter.js"></script>
<script src="scripts/custom.js"></script>


<!-- Style Switcher
================================================== -->
<script src="scripts/switcher.js"></script>

<div id="style-switcher">
	<h2>Style Switcher <a href="#"></a></h2>
	

		
</div>


</body>
</html>
