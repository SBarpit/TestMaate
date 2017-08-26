package bean;

public class SignUp {
 private String fname,lname,uname,email,pass,admin;
 public void setfname(String fname){
  this.fname=fname;	 
 }
 public void setadmin(String admin){
	 this.admin=admin;
 }
 public void setlname(String lname){
	 this.lname=lname;
 }
 public void setemail(String email){
	 this.email=email;
 }
 public void setuname(String uname){
	 this.uname=uname;
 }
 public void setpass(String pass){
	 this.pass=pass;
 }
 public String getfname(){
	 return fname;
 }
 public String getlname(){
	 return lname;
 }
 public String getuname(){
	 return uname;
 }
 public String getemail(){
	 return email;
 }
 public String getPass(){
	 return pass;
 }
 public String getAdmin(){
	 return admin;
 }

}
