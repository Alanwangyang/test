package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC {
	public static String driver = "com.mysql.jdbc.Driver";
	public static String url = "jdbc:mysql://localhost:3306/echarts";
	public static String user = "root";
	public static String password = "123456";
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void release(Connection conn, Statement stat, ResultSet result) {
		if (conn != null) {
			try {
				conn.close();
				conn = null;
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		if (stat != null) {
			try {
				stat.close();
				stat = null;
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		if (result != null) {
			try {
				result.close();
				result = null;
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
