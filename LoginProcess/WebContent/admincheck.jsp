<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<%@include file="header.jsp" %>
<h3 align="center">Admin Login</h3>
<form action="adminprocess.jsp" method="post">
<table align="center">
<tr><td>
Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass"/></td></tr>

<tr><td></td><td><input type ="submit" value="Login" align="center"/></td></tr>
</table>
</form>
<%@ include file="footer.jsp"  %>

</body>
</html>