<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
<%@page import="bean.SignUp" %>
<%@page import="bean.Dashbord" %>
<%@ include file="dash.jsp" %>
<%
if(session==null){
	response.sendRedirect("login.jsp");
}
        String email=(String)session.getAttribute("name");
        
        //redirect user to login page if not logged in
         if(email==null){
            response.sendRedirect("login.jsp");
        } 
         SignUp s=new SignUp();   
         s=Dashbord.data(email);
        // System.out.println(s.getfname()+"  "+s.getlname()+"  "+s.getuname()+"  "+s.getemail());
        %>
  
    <table align="center">
    <tr><th>First Name</th><th>Last Name</th><th>User Name</th><th>Email</th><th>Admin</th></tr>
    <tr><td><%=s.getfname()%></td>
    <td><%=s.getlname()%></td>
    <td><%=s.getuname()%></td>
    <td><%=s.getemail() %></td>
    <td><%=s.getAdmin() %></td></tr>
    </table>
  
       <%--  <p>Welcome <%=email%></p>  --%>   
       
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>

</body>
</html>