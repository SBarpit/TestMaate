<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Process</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<body>
<%@ include file="header.jsp" %>
<%@page import="bean.RegisterBean" %>
<jsp:useBean id="obj" class="bean.SignUp"/>
<jsp:setProperty property="*" name="obj"/>
<%
int status=RegisterBean.register(obj);
if(status>0){
	out.println("You are succesfully registered, Login Now!!");
	session.setAttribute("session","TRUE");
	%>
	</br></br></br></br></br></br></br></br></br></br></br></br></br>
	<a href="login.jsp">Login</a></br>
	<%
}
else{
	out.println("Sorry");

	%>
	 <%
         // New location to be redirected
         String site = new String("signup.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
      %>
	<%
}
	%>
	<%@ include file="footer.jsp" %> 
</body>
</html>