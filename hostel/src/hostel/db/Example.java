package hostel.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class Example {
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	public void getData() {
			try {
				con=DbConnection.getCon();
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from user");
				while(rs.next()) {
					System.out.println(rs.getInt("id")+" "+rs.getString("first_name")+" "+rs.getString("last_name")+" "+rs.getString("uid"));
				}
					
			}catch(Exception e) {
					e.printStackTrace();
			}
	}
	
	public void addData() {
		try {
			
			con=DbConnection.getCon();
			stmt=con.createStatement();
			stmt.execute("insert into user(first_name,last_name,uid,password,user_type) values('Anamika','rawat','1611981106','12345','User')");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delete() {
		try {
			con=DbConnection.getCon();
			stmt=con.createStatement();
			stmt.execute("delete from user where first_name='Anamika'");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		
		Example obj=new Example();
		//obj.getData();
		obj.addData();
		obj.getData();
		obj.delete();
		obj.getData();
	}

}
