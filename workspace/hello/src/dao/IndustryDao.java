package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.Industry;
import domain.Industry2;
import util.JDBC;

public class IndustryDao {
	
	public List<Industry> findIndustry() {
		Connection conn = JDBC.getConnection();
		Statement stat = null;
		ResultSet result = null;
		String sql = "select * from industry";
		List<Industry> list = new ArrayList<Industry>();
		try {
			stat = conn.createStatement();
			result = stat.executeQuery(sql);
			while (result.next()) {
				Industry industry = new Industry();
				industry.setName(result.getString(1));
				industry.setIn_value(result.getInt(2));
				industry.setOut_vlaue(result.getInt(3));
				list.add(industry);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBC.release(conn, stat, result);
		}
		return list;
	}
	
	public List<Industry2> findIndustry2() {
		Connection conn = JDBC.getConnection();
		Statement stat = null;
		ResultSet result = null;
		String sql = "select * from industry";
		List<Industry2> list = new ArrayList<Industry2>();
		try {
			stat = conn.createStatement();
			result = stat.executeQuery(sql);
			while (result.next()) {
				Industry2 industry = new Industry2();
				industry.setName(result.getString(1));
				industry.setValue(result.getInt(2));
				list.add(industry);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBC.release(conn, stat, result);
		}
		return list;
	}
}
