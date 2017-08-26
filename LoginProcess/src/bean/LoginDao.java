package bean;
import java.sql.*;

public class LoginDao {
public static boolean validate(LoginBean bean){
	boolean status=false;
	try{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("select * from Data where Email=? and Pass=? ");
		String e=bean.getEmail();
		ps.setString(1,e);
		String p=(String)bean.getPass();
		ps.setString(2,p);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
//		System.out.println(status+"\n"+e+"\n"+p+"\n");
	}catch(Exception e){}
	return status;
}


}
