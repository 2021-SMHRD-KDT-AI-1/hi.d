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
	
	//������ ����
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
	
	// ������ ����
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

	// ������ ���� //vo����
	public int update_pet(petVO petinfo) {
		try {
			
			getConn();
			
			sql = "update petinfo set pet_nick = ?, pet_profile = ?, pet_introduce = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, petinfo.getPet_nick());
			psmt.setString(2, petinfo.getPet_profile());
			psmt.setString(3, petinfo.getPet_introduce());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	//������ ���� ��������
	public ArrayList<petVO> get_pet(){
		ArrayList<petVO> pets = new ArrayList<>();
		petVO one_pet = null;
		try {
			getConn();
			sql = "select * from petinfo";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_pet.setPet_num(rs.getString(1));
				one_pet.setPet_nick(rs.getString(2));
				one_pet.setPet_profile(rs.getString(3));
				one_pet.setPet_introduce(rs.getString(4));
				one_pet.setPet_gen(rs.getString(5));
				one_pet.setSpecies(rs.getString(6));
				one_pet.setEmail(rs.getString(7));
				
				pets.add(one_pet);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return pets;
	}
	
	
	//������ ����
	public int delete_pet(petVO petinfo) {
		try {
			getConn();
			sql = "delete from petinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, petinfo.getPet_num());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}