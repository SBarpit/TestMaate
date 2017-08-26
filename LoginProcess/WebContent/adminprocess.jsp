<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="bean.Dashbord" %>
<%
String email=(String)request.getParameter("email");
String pass=(String)request.getParameter("pass");
boolean st=Dashbord.validator(email,pass);
%>
<% 
if(st){ 
response.sendRedirect("adminlog.jsp");
}
else{
	response.sendRedirect("admincheck.jsp");
}
%>
</body>
</html>