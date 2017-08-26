<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">  
</head>
<body>
<%@page import="bean.LoginDao" %>
<%@page import="bean.LoginBean" %>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>
<%

boolean status=LoginDao.validate(obj);
if(status){
	out.println("You are succesfully logged in");
	session.setAttribute("session","TRUE");
	 session.setAttribute("name",obj.getEmail());
	    response.sendRedirect("profile.jsp");
	%>
	  <%-- <%
         // New location to be redirected
         String site = new String("profile.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
      %>  --%>
	<% 
}
else{
	//out.println("Sorry,email or password error");

	%>
	<jsp:include page="login.jsp"></jsp:include>
	<%
}
	%>


</body>
</html>