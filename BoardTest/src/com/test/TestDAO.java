package com.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.test.db.DBUtil;

public class TestDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public TestDAO() {
	   DBUtil util = new DBUtil();
	   conn = util.open();
	}
	
	
	
	public void close() {
	   try {
	      conn.close();
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	}



	public String test(int num) {
		// TODO Auto-generated method stub
		try {
			String sql = "select name from tblinsa where num = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, num);
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getString("name");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
	

}
