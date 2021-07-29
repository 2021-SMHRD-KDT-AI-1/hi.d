package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.memberVO;

public class memberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	String sql = "";
	memberVO vo = null;

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

	
	public int Join(String email, String pw) {

		try {

			getConn();

			sql = "insert into memberinfo values(?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pw);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public memberVO Login(String email, String pw) {
		// select는 리턴타입이 다르다
		try {

			getConn();

			sql = "select * from memberinfo where email = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();

			if (rs.next()) {

				String getemail = rs.getString(1);
				String getpw = rs.getString(2);
				
				if(getpw==null) {
					return null;
				}
				
				if (pw.equals(getpw)) {

					vo = new memberVO(getemail, getpw);
					System.out.println(vo.getEmail());
				}
			}

		} catch (Exception e) {
			e.printStackTrace(); // try문이 실행이 안되면 오류를 출력해주는 문
		} finally {
			close();
		}
		return vo;
	}

}
