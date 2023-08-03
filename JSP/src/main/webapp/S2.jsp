<%
String name=request.getParameter("uname");
String password=request.getParameter("password");
out.print("WELCOME:"+name);
out.print("Password:"+password);
%>
