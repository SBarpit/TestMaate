package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterBean {
	public static int register(SignUp b){
		int status=0;
		try{
			Connection con=ConnectionProvider.getCon();
			String fname,lname,uname,email,pass,admin;
			fname=b.getfname();
			lname=b.getlname();
			email=b.getemail();
			uname=b.getuname();
			pass= b.getPass();
			admin=b.getAdmin();
			PreparedStatement ps=con.prepareStatement("insert into Data values(?,?,?,?,?,?)");
			ps.setString(1,fname);
			ps.setString(2,lname);
			ps.setString(3,uname);
			ps.setString(4,email);
			ps.setString(5,pass);
			ps.setString(6, admin);
			status=ps.executeUpdate();
		
	//System.out.println(status+"\n"+e+"\n"+p+"\n");
		}catch(Exception e){}
		return status;
	}


	}

