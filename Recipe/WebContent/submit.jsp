<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String title=request.getParameter("title");
String category=request.getParameter("category");
String category1=request.getParameter("category1");
String category2=request.getParameter("category2");
String description=request.getParameter("summary");
String name=request.getParameter("ingredient_name");
String measurement=request.getParameter("ingredient_note");
String name1=request.getParameter("ingredient_name1");
String measurement1=request.getParameter("ingredient_note1");
String name2=request.getParameter("ingredient_name2");
String measurement2=request.getParameter("ingredient_note2");
String name3=request.getParameter("ingredient_name3");
String measurement3=request.getParameter("ingredient_note3");
String name4=request.getParameter("ingredient_name4");
String measurement4=request.getParameter("ingredient_note4");
int cate = Integer.parseInt(category);
int cate1 = Integer.parseInt(category1);
int cate2 = Integer.parseInt(category2);
String reid ="";
String inid ="";
String inid1 ="";
String inid2 ="";
String inid3 ="";
String inid4 ="";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
Statement st3=conn.createStatement();
Statement st4=conn.createStatement();
Statement st5=conn.createStatement();
Statement st6=conn.createStatement();
Statement st7=conn.createStatement();
String sql ="INSERT INTO recipes(title,description)values('"+title+"','"+description+"')";
String sql1 ="SELECT MAX(recipe_id) FROM recipes";
String sql3 ="Select * from ingredients where '"+name+"' IN (Select name From ingredients)";
String sql4 ="INSERT INTO ingredients(name)values('"+name+"')";
String sql5 ="Select ingredient_id from ingredients where name = '"+name+"'";


int i=st.executeUpdate(sql);
ResultSet resultSet1 = st1.executeQuery(sql1);
if(resultSet1.next()){
	reid = resultSet1.getString(1);
}
int re_id = Integer.parseInt(reid);
String sql2 ="INSERT INTO inside(category_id,recipe_id)values("+cate+","+re_id+")";
i=st2.executeUpdate(sql2);
if(cate1 !=0){
Statement st2_1=conn.createStatement();
String sql2_1 ="INSERT INTO inside(category_id,recipe_id)values("+cate1+","+re_id+")";
i=st2_1.executeUpdate(sql2_1);
}
if(cate2 !=0){
Statement st2_2=conn.createStatement();
String sql2_2 ="INSERT INTO inside(category_id,recipe_id)values("+cate2+","+re_id+")";
i=st2_2.executeUpdate(sql2_2);
}
ResultSet resultSet3 = st3.executeQuery(sql3);
if(!resultSet3.next()){
	i=st4.executeUpdate(sql4);
}
ResultSet resultSet5 = st5.executeQuery(sql5);
if(resultSet5.next()){
	inid = resultSet5.getString(1);
}
int in_id = Integer.parseInt(inid);
String sql6 ="INSERT INTO include(recipe_id,ingredient_id,measurement)values("+re_id+","+in_id+",'"+measurement+"')";
i=st6.executeUpdate(sql6);
if(name1 != ""){
	Statement in1_1=conn.createStatement();
	Statement in1_2=conn.createStatement();
	Statement in1_3=conn.createStatement();
	Statement in1_4=conn.createStatement();
	String ing1_1 ="Select * from ingredients where '"+name1+"' IN (Select name From ingredients)";
	String ing1_2 ="INSERT INTO ingredients(name)values('"+name1+"')";
	String ing1_3 ="Select ingredient_id from ingredients where name = '"+name1+"'";
	ResultSet ingre1_1 = in1_1.executeQuery(ing1_1);
	if(!ingre1_1.next()){
		i=in1_2.executeUpdate(ing1_2);
	}
	ResultSet ingre1_2 = in1_3.executeQuery(ing1_3);
	if(ingre1_2.next()){
		inid1 = ingre1_2.getString(1);
	}
	int in_id1 = Integer.parseInt(inid1);
	String ing1_4 ="INSERT INTO include(recipe_id,ingredient_id,measurement)values("+re_id+","+in_id1+",'"+measurement1+"')";
	i=in1_4.executeUpdate(ing1_4);
}
if(name2 != ""){
	Statement in2_1=conn.createStatement();
	Statement in2_2=conn.createStatement();
	Statement in2_3=conn.createStatement();
	Statement in2_4=conn.createStatement();
	String ing2_1 ="Select * from ingredients where '"+name2+"' IN (Select name From ingredients)";
	String ing2_2 ="INSERT INTO ingredients(name)values('"+name2+"')";
	String ing2_3 ="Select ingredient_id from ingredients where name = '"+name2+"'";
	ResultSet ingre2_1 = in2_1.executeQuery(ing2_1);
	if(!ingre2_1.next()){
		i=in2_2.executeUpdate(ing2_2);
	}
	ResultSet ingre2_2 = in2_3.executeQuery(ing2_3);
	if(ingre2_2.next()){
		inid2 = ingre2_2.getString(1);
	}
	int in_id2 = Integer.parseInt(inid2);
	String ing2_4 ="INSERT INTO include(recipe_id,ingredient_id,measurement)values("+re_id+","+in_id2+",'"+measurement2+"')";
	i=in2_4.executeUpdate(ing2_4);
}
if(name3 != ""){
	Statement in3_1=conn.createStatement();
	Statement in3_2=conn.createStatement();
	Statement in3_3=conn.createStatement();
	Statement in3_4=conn.createStatement();
	String ing3_1 ="Select * from ingredients where '"+name3+"' IN (Select name From ingredients)";
	String ing3_2 ="INSERT INTO ingredients(name)values('"+name3+"')";
	String ing3_3 ="Select ingredient_id from ingredients where name = '"+name3+"'";
	ResultSet ingre3_1 = in3_1.executeQuery(ing3_1);
	if(!ingre3_1.next()){
		i=in3_2.executeUpdate(ing3_2);
	}
	ResultSet ingre3_2 = in3_3.executeQuery(ing3_3);
	if(ingre3_2.next()){
		inid3 = ingre3_2.getString(1);
	}
	int in_id3 = Integer.parseInt(inid3);
	String ing3_4 ="INSERT INTO include(recipe_id,ingredient_id,measurement)values("+re_id+","+in_id3+",'"+measurement3+"')";
	i=in3_4.executeUpdate(ing3_4);
}
if(name4 != ""){
	Statement in4_1=conn.createStatement();
	Statement in4_2=conn.createStatement();
	Statement in4_3=conn.createStatement();
	Statement in4_4=conn.createStatement();
	String ing4_1 ="Select * from ingredients where '"+name4+"' IN (Select name From ingredients)";
	String ing4_2 ="INSERT INTO ingredients(name)values('"+name4+"')";
	String ing4_3 ="Select ingredient_id from ingredients where name = '"+name4+"'";
	ResultSet ingre4_1 = in4_1.executeQuery(ing4_1);
	if(!ingre4_1.next()){
		i=in4_2.executeUpdate(ing4_2);
	}
	ResultSet ingre4_2 = in4_3.executeQuery(ing4_3);
	if(ingre4_2.next()){
		inid4 = ingre4_2.getString(1);
	}
	int in_id4 = Integer.parseInt(inid4);
	String ing4_4 ="INSERT INTO include(recipe_id,ingredient_id,measurement)values("+re_id+","+in_id4+",'"+measurement4+"')";
	i=in4_4.executeUpdate(ing4_4);
}
String sql7 ="INSERT INTO createdby(username,recipe_id,date)values('"+username+"',"+re_id+",CURDATE())";
i=st7.executeUpdate(sql7);
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<html>
<body>  
<a href="index.jsp?username=<%=username %>">Successfully Inserted....Click to back to the home page</a>
  
</body> 
</html>
