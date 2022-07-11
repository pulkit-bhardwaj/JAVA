package hostel.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import hostel.dao.UserDao;
import hostel.db.DbConnection;

public class UserOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public static UserDao login(UserDao user) {
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("select * from user where uid=? and password=?");
			stmt.setString(1, user.getUid());
			stmt.setString(2, user.getPassword());
			rs=stmt.executeQuery();
			if(rs.next()) {
				//System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
				user.setFirst_name(rs.getString("first_name"));
				user.setLast_name(rs.getString("last_name"));
				user.setId(rs.getInt("id"));
				user.setUser_type(rs.getString("user_type"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public static int addStudent(UserDao user) {
		int i=0;
		try {
			con=DbConnection.getCon();
			stmt=con.prepareStatement("insert into user(first_name,last_name,uid,password,user_type) values(?,?,?,?,?)");
			stmt.setString(1, user.getFirst_name());
			stmt.setString(2, user.getLast_name());
			stmt.setString(3, user.getUid());
			stmt.setString(4, user.getPassword());
			stmt.setString(5, user.getUser_type());
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}
