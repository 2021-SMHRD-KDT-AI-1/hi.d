package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.emotionVO;
import com.VO.memberVO;
import com.VO.petVO;

public class petDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	String sql = "";
	petVO vo = null;
	
	
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
	
	//프로필 생성
	public int PetJoin(String pet_num, String pet_nick, String pet_profile, String pet_introduce, String pet_gen,
			String species, String email) {

		try {

			getConn();

			sql = "insert into petinfo values(pet_num_seq.nextval, ?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pet_nick);
			psmt.setString(2, pet_profile);
			psmt.setString(3, pet_introduce);
			psmt.setString(4, pet_gen);
			psmt.setString(5, species);
			psmt.setString(6, email);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 프로필 선택
	public ArrayList<petVO> select(String email)  {
		
		ArrayList<petVO> arr = new ArrayList<petVO> ();
		
		try {
			
			getConn();
			
			sql="select * from petinfo where email = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();
			
			while(rs.next()) {

				String getpet_num = rs.getString(1);
				String getpet_nick = rs.getString(2);
				String pet_profile = rs.getString(3);
				String getemail = rs.getString(7);

				if (email.equals(getemail)) {
					
					vo = new petVO(getpet_num, getpet_nick, pet_profile);
					
					arr.add(vo);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	
	// 프로필 사진 업로드 
	public int loadProfile(String pet_profile) {
		
		try {
			
			getConn();
			
			sql = "insert into petinfo(pet_num, pet_profile) "
					+ "values(pet_num_seq.currval, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,  pet_profile);
			
			cnt = psmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	
	// 프로필 수정
	public int update(String pet_nick, String pet_profile, String pet_introduce ) {
		try {
			
			getConn();
			
			sql = "update petinfo set pet_nick=?, pet_profile, pet_introduce";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pet_nick);
			psmt.setString(2, pet_profile);
			psmt.setString(3, pet_introduce);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	
	
}
