package hostel.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection implements Provider {
	static Connection con=null;
	
	public static Connection getCon() throws SQLException {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,username,password);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
