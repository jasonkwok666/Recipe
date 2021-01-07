<!--Jiaxiang Guo-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String username1=request.getParameter("username1");
String password1=request.getParameter("password1");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe", "root", "root");
Statement st=conn.createStatement();
if(username==""){
	ResultSet rs = st.executeQuery("SELECT * FROM users WHERE username ='"+username1+"'");
	if(!rs.next()){
		int i=st.executeUpdate("INSERT INTO users(username,password,last_name,first_name,email)values('"+username1+"','"+password1+"','"+lastname+"','"+firstname+"','"+email+"')");
		username = username1;
	}
	else
	{
   	String redirectURL = "http://localhost:8080/CS157A-01/login.html";
	response.sendRedirect(redirectURL);
	}

}
else{
	
	if(username != ""){
			ResultSet rs = st.executeQuery("SELECT * FROM users WHERE username ='"+username+"'");
		    if(rs.next()){
			   if(!rs.getString(2).equals(password)){
			   	  String redirectURL = "http://localhost:8080/CS157A-01/login.html";
				  response.sendRedirect(redirectURL);
			      }
		    }
		    else{
		      	 String redirectURL = "http://localhost:8080/CS157A-01/login.html";
		   			response.sendRedirect(redirectURL);
		       }
     }//not empty if
    else{
   	 String redirectURL = "http://localhost:8080/CS157A-01/login.html";
			response.sendRedirect(redirectURL);
    }
   }// else 

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<html>
<body>  
<h1>  
<a href="index.jsp?username=<%=username %>">Welcome ...<%=username %></a>
</h1> 
</body> 
</html>
	
