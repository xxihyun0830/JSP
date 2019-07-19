package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnProvider {
	public static Connection getConnection() {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/practice";
		String uid = "root";
		String upw = "qazsokmj12";
		
		try {
            Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, uid, upw); //connection °´Ã¼ »ý¼º 
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}

}
