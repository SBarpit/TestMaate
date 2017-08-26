<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%
HttpSession sess=request.getSession();
sess.invalidate();  
//out.print(""You are successfully logged out!"); 
%>
<br>
<br>
<h3 style="color:blue; text-align:center;">You have Successfully loged out!!</h3>

</body>
</html>