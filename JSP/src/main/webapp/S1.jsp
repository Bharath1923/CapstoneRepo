<%
String name=request.getParameter("uname");
String password=request.getParameter("psw");
out.print("username:"+name);
out.print("Paaword:"+password);
%>
<form action ="S2.jsp">
<input type= "hidden" name ="uname" value ="<%=name%>"><P></p>
<input type= "hidden" name ="password" value ="<%=password%>"><P></p>
<input type= "submit" value ="GO"><P></p>
</form>
</body>