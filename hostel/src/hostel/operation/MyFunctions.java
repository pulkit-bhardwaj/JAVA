package hostel.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import hostel.db.DbConnection;

public class MyFunctions {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public int totalStudentCount() {
		int total=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select count(*) as total from user where user_type=?");
			stmt.setString(1, "User");
			rs=stmt.executeQuery();
			rs.next();
			total=rs.getInt("total");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return total;
	}
}
