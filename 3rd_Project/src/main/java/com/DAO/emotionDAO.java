package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.emotionVO;
import com.VO.memberVO;

public class emotionDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	String sql = "";
	emotionVO vo = null;

	public void getConn() {

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public emotionVO show(String emotion) {
		try {
			
			getConn();
			
			sql= "select * from emotion ";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next()) {
				String comment  = rs.getString(2);
				String tag = rs.getString(3);
				vo = new emotionVO(emotion, comment, tag);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	
	
	
}
