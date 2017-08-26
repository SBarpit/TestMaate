<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="bean.SignUp" %>
<%@page import="java.util.*" %>
<%@ include file="adash.jsp" %>
<%@page import="bean.Dashbord" %>
<%
ArrayList<SignUp> list=new ArrayList();
list=Dashbord.viewAll();
%>
<br>
<table align="center">
<tr><th>First Name</th><th>Last Name</th><th>User Name</th><th>Email</th><th>Password</th></tr>
<%
for(SignUp sb:list){
	%>
	<tr><td><%=sb.getfname() %></td>
	<td><%=sb.getlname() %></td>
	<td><%=sb.getuname() %></td>
	<td><%=sb.getemail() %></td>
	<td><%=sb.getPass() %></td>
	</tr>
<%	
	
}
%>
</table>



</body>
</html>