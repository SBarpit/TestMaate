<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
<script type="text/javascript"> 
function validate(){  
	var fname=document.signup.fname.value;
	var lname=document.signup.lname.value;  
	var uname=document.signup.uname.value;
	var passd=document.signup.pass.value;  
	var email=document.signup.email.value;
	var cpassd=document.signup.pass1.value;
	var status=false;
	  
	if (fname==null || fname==""){  
		document.getElementById("fnamelocation").innerHTML=  
			"<img src='C:/Users/acer/workspace/LoginProcess/temp/Red.jpg'/> Please enter your name";  
	           status=false;
	    
	}
	else if(lname==""|| lname==""){
		document.getElementById("lnamelocation").innerHTML=  
			"<img src='C:/Users/acer/workspace/LoginProcess/temp/Red.jpg'/> Please enter your name";  
	           status=false;
	}
	else if(uname==""|| uname==""){
		document.getElementById("unamelocation").innerHTML=  
			"<img src='C:/Users/acer/workspace/LoginProcess/temp/DeleteRed.jpg'/> Please enter your User name";  
	           status=false;
	}
	
	else if(email==""||email==null){
		document.getElementById("emaillocation").innerHTML=  
			" <img src='C:/Users/acer/workspace/LoginProcess/temp/DeleteRed.jpg'/> Please enter your Email";  
	           status=false;
	}
	
	
else if(passd.length<6){  
	
		document.getElementById("passwordlocation").innerHTML=  
			" <img src='C:/Users/acer/workspace/LoginProcess/temp/DeleteRed.jpg'/> Password must be greater than 6";  
			status=false;   
	  
	  }
	
else if(passd.localeCompare(cpassd)!=0){
		document.getElementById("cpasswordlocation").innerHTML=  
			" <img src='C:/Users/acer/workspace/LoginProcess/temp/DeleteRed.jpg'/> Password is not matched.";  
			status=false;   
		
	}

    else{
	status=true;
     }
	
return status;
}
</script>  
</head>

<body>


<%@ include file="header.jsp" %>
<%
String profile_msg=(String)request.getAttribute("profile_msg");
if(profile_msg!=null){
	out.print(profile_msg);
}
String login_msg=(String)request.getAttribute("login_msg");
if(login_msg!=null){
out.print(login_msg);	
}
%>
<h3 align="center">Register</h3>
<form name="signup" method="post" action="registerProcess.jsp" onsubmit="return validate()">
<table align="center">
<tr><td>First Name*:</td><td><input type="text" name="fname"/><span id="fnamelocation" style="color:red" required></span></td></tr>
<tr><td>Last Name*:</td><td><input type="text" name="lname"/><span id="lnamelocation" style="color:red" required></span></td></tr>
<tr><td>Student ID*:</td><td><input type="text" name="uname"/><span id="unamelocation" style="color:red" required></span></td></tr>
<tr><td>Email*:</td><td><input type="email" name="email"/><span id="emaillocation" style="color:red" required></span></td></tr>
<tr><td>Password*:</td><td> <input type="password" name="pass"/><span id="passwordlocation" style="color:red" required></span></td></tr>
<tr><td>Confirm Password*:</td><td><input type="password" name="pass1"/><span id="cpasswordlocation" style="color:red" required></span></td></tr><tr><td></td><td><input type="submit" value="Register Me!"/></td></tr>
<tr><td>
<tr><td>Are you ? :</td><td><input type="radio" name="role" value="tech" checked> Teacher &nbsp;
<input type="radio" name="role" value="stu">Student &nbsp;
</td></tr></table>

</form>
<br>

<%@ include file="footer.jsp" %>
</body>
</html>