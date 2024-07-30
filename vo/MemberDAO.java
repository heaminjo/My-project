package com.vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.sql.DataSource;

public class MemberDAO extends LinkDAO {
	
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	private DataSource dataSource = null;
	private Context context = null;
	
	public int insert(memberDTO m) throws SQLException {
		conn = getConn();
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		ps = conn.prepareStatement(sql);

		ps.setString(1,m.getId());
		ps.setString(2,m.getPw());
		ps.setString(3,m.getName());
		ps.setString(4,m.getGender());		
		ps.setString(5,m.getAddress());
		ps.setString(6,m.getPhone());
		ps.setString(7,m.getEmail());
		ps.setString(8,m.getBirth());	
		
		int result = ps.executeUpdate();
		
		return result;
	}
	//로그인 체크
	public int loginCheck(String id,String pw) throws SQLException {
		conn = getConn();
		
		//아이디를 통해 select 값 가져오기
		String sql = "select * from member ";
		sql += " where id = ? and pw =?";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,pw);
		
		rs = ps.executeQuery();
		
		if(rs.next()) {
			return 1; //로그인 성공
		}
		else {
			return 0; //로그인 실패
		}
		
	}
	//아이디 중복 체크
	public String idCheck(String id) throws SQLException {
		 String result = null;
		try {
			conn = getConn();
			ps = conn.prepareStatement("select * from member where id = ?");
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result =  "1";
			}
			else {
				result = "0";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs==null)rs.close();
				if(ps==null)ps.close();
				if(conn==null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public memberDTO memberList(String id) throws SQLException {
		conn = getConn();
		
		//아이디를 통해 select 값 가져오기
		String sql = "select * from member ";
		sql += " where id = ?";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1,id);
		
		rs = ps.executeQuery();
		memberDTO m = new memberDTO();
		
		if(rs.next()) {
			m.setId(m.getId());
			m.setPw(m.getPw());
			m.setEmail(m.getEmail());
			m.setBirth(m.getName());
			m.setBirth(m.getBirth());

		}
		return m;
	}
}
