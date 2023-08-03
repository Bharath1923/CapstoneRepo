<!DOCTYPE html><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String username=request.getParameter("uname");
String password1=request.getParameter("password");
long mobileno=Long.parseLong(request.getParameter("mbno"));
String mail=request.getParameter("rmail");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String cpsw=request.getParameter("cpsw");
String fullname=fname+lname;
String password=null;
if(password1.equals(cpsw))
{
	password=password1;
}
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bharath","bharath");
     PreparedStatement ps=con.prepareStatement("insert into gmailreg values(?,?,?,?,?,?,?)");
     ps.setString(1,fullname);
     ps.setString(2,username);
     ps.setString(3,password);
     ps.setLong(4,mobileno);
     ps.setString(5,mail);
     ps.setString(6,dob);
     ps.setString(7,gender);
int i=ps.executeUpdate();
out.print(i+"New Gmail Created");
con.close();
}
catch (Exception ex)
{
	
out.println(ex);
}
%>
</body>
</html>