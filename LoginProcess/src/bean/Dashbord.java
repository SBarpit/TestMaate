package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class Dashbord {
	
public static SignUp data(String email){
	SignUp sn=null;
	try{
		
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("select * from Data where email=?");
	ps.setString(1,email);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		sn=new SignUp();
		sn.setfname(rs.getString(1));
		sn.setlname(rs.getString(2));
		sn.setuname(rs.getString(3));
		sn.setemail(rs.getString(4));
		sn.setadmin(rs.getString(6));
	}
	}
	catch(Exception ex){
		ex.printStackTrace();
	}
	return sn;
}
public static ArrayList<SignUp> viewAll(){
	SignUp sn=null;
	ArrayList<SignUp> list=new ArrayList();
	try{
		
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Data");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			sn=new SignUp();
			sn.setfname(rs.getString(1));
			sn.setlname(rs.getString(2));
			sn.setuname(rs.getString(3));
			sn.setemail(rs.getString(4));
			sn.setpass(rs.getString(5));
			sn.setadmin(rs.getString(6));
			list.add(sn);
		}
	}catch(Exception ex){
		ex.printStackTrace();
	}
	return list;
}
public static boolean validator(String email,String pass){
	boolean status=false;
	try{
		
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("Select * from admin where Email=? and pass=?");
	    ps.setString(1,email);
	    ps.setString(2,pass);
	    ResultSet rs=ps.executeQuery();
	    status=rs.next();
	}
	catch(Exception ex){
		ex.printStackTrace();
	}
	return status;
}
}
