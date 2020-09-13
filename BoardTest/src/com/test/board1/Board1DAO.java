package com.test.board1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.test.db.DBUtil;

public class Board1DAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	//생성자
	public Board1DAO() {
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	//sql 닫아주는 문장.
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
			String where = "";
			
			if (map.get("search") != null && map.get("search") != "") {
				//검색어가 존재하는 경우
//				where = String.format("where name like '%%%s%%' or ssn like '%%%s%%' or ibsadate like '%%%s%%' or city like '%%%s%%' or tel like '%%%s%%' or buseo like '%%%s%%' or jikwi like '%%%s%%' or basicpay like '%%%s%%' sudang like '%%%s%%'" ,
//									map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"));
			
				where = String.format("where name like '%%%s%%' or buseo like '%%%s%%' or jikwi like '%%%s%%'", map.get("search"),map.get("search"),map.get("search"));
			} else {
				//검색어가 존재하지 않는 경우
				where = "";
			}
			
			String sql = String.format("select count(*) as cnt from tblinsa %s", where);
			
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
	
	//내용물을 가져올것.
	public List<Board1DTO> getList(Map<String, String> map) {
		try {
			String where = "";
			
			if (map.get("search") != null && map.get("search") != "") {
				//검색값이 있는 경우
				
//				where = String.format("where name like '%%%s%%' or ssn like '%%%s%%' or ibsadate like '%%%s%%' or city like '%%%s%%' or tel like '%%%s%%' or buseo like '%%%s%%' or jikwi like '%%%s%%' or basicpay like '%%%s%%' sudang like '%%%s%%'" ,
//						map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"));
				where = String.format("where name like '%%%s%%' or buseo like '%%%s%%' or jikwi like '%%%s%%'", map.get("search"),map.get("search"),map.get("search"));

			} else {
				//검색값이 없는경우
				where = "";
			}
			
			String sql = String.format("select a.* from (select ti.*,rownum as rn from tblinsa ti %s order by num asc) a where rn between %s and %s", where, map.get("begin"),map.get("end"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			List<Board1DTO> list = new ArrayList<Board1DTO>();
			
			while(rs.next()) {
				Board1DTO dto = new Board1DTO();//객체 생성
				dto.setSeq(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setSsn(rs.getString("ssn"));
				dto.setIbsadate(rs.getString("ibsadate").substring(0,10));
				dto.setCity(rs.getString("city"));
				dto.setTel(rs.getString("tel"));
				dto.setBuseo(rs.getString("buseo"));
				dto.setJikwi(rs.getString("jikwi"));
				dto.setBasicpay(rs.getString("basicpay"));
				dto.setSudang(rs.getString("sudang"));
				
				list.add(dto);
				
			}
			
			return list;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
