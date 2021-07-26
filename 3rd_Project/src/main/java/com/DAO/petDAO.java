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
	public int PetJoin(petVO petinfo) {
		try {
			getConn();
			sql = "insert into petinfo values(pet_num_seq.nextval, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, petinfo.getPet_nick());
			psmt.setString(2, petinfo.getPet_profile());
			psmt.setString(3, petinfo.getPet_introduce());
			psmt.setString(4, petinfo.getPet_gen());
			psmt.setString(5, petinfo.getSpecies());
			psmt.setString(6, petinfo.getEmail());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 프로필 선택
	public ArrayList<petVO> pet_select(String email)  {
		ArrayList<petVO> arr = new ArrayList<>();
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

	// 프로필 수정 //vo묶기
	public int pet_update(String pet_nick, String pet_profile, String pet_introduce) {
		try {
			
			getConn();
			
			sql = "update petinfo set pet_nick = ?, pet_profile = ?, pet_introduce = ?";
			
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
	
	//프로필 정보 가져오기
	
	//프로필 삭제
	
	
}
