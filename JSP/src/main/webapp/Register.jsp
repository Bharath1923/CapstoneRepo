<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
String fname=request.getParameter("fname");	
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");	
String password=request.getParameter("psw");
String cpsw=request.getParameter("cpsw");
out.print("User Name:"+uname);
%>
<form action="Register1.jsp" method="post">
Mobile Number:<input type="text" name="mbno"><p></p>
Recovery Mail:<input type="email" name="rmail"><p></p>
DOB:<input type="text" name="dob"><p></p>
Gender:<input type="text" name="gender"><p></p>
<input type="submit" value="Register"><p></p>
<input type="hidden" name="fname" value="<%=fname %>"><p></p>
<input type="hidden" name="lname" value="<%=lname %>"><p></p>
<input type="hidden" name="uname" value="<%=uname %>"><p></p>
<input type="hidden" name="password" value="<%=password %>"><p></p>
<input type="hidden" name="cpsw" value="<%=cpsw %>"><p></p>
</form>
</body>
</html>