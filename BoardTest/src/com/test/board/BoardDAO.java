package com.test.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.db.DBUtil;

public class BoardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	//생성자 생성
	public BoardDAO() {
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
	//총 몇개를 가져올건지 정해준다
	public int getTotalCount(Map<String, String> map) {
		try {
			String where = "" ;
			
			if(map.get("search") != null && map.get("search") != "") {
				where = String.format("where book_name like '%%%s%%' or publisher like '%%%s%%'", map.get("search"),map.get("search"));//여기서 문제가 생겼다함.
				System.out.println(where);
			} else {
				where = "";
			}
			
			String sql = String.format("select count(*) as cnt from tblBook %s",where);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	//내용물을 가져올 것이다
	public List<BoardDTO> getList(Map<String, String> map) {
		try {
			
			String where = "";
			
			if (map.get("search") != null && map.get("search") != "") {
				where = String.format("where book_name like '%%%s%%' or publisher like '%%%s%%'", map.get("search"),map.get("search"));
			} else {
				where = "";
			}
			
			
			String sql = String.format("select b.* from (select a.*,rownum as rn from (select tb.* from tblbook tb %s order by tb.seq_book) a) b where rn >= %s and rn <= %s", where ,map.get("begin"),map.get("end"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			List<BoardDTO> list = new ArrayList<BoardDTO>();
			
			
			while(rs.next()) {
				
				BoardDTO dto = new BoardDTO();
				
				dto.setSeq(rs.getString("seq_book"));
				dto.setSubject(rs.getString("book_name"));
				dto.setContent(rs.getString("publisher"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
}
