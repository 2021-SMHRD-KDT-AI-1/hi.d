package com.DAO;

import java.awt.Image;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JLabel;

import com.VO.emotionVO;
import com.VO.memberVO;
import com.VO.petVO;
import com.VO.speciesVO;

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
	public int PetJoin(petVO vo) {
		try {
			getConn();
			sql = "insert into petinfo values(pet_num_seq.nextval, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getPet_nick());
			psmt.setString(2, vo.getPet_profile());
			psmt.setString(3, vo.getPet_introduce());
			psmt.setString(4, vo.getPet_gen());
			psmt.setString(5, vo.getSpecies());
			psmt.setString(6, vo.getEmail());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 종 모아둔거
	public ArrayList<String> species_select(String CorD) {
			ArrayList<String> species_list = new ArrayList<>();
			try {
				getConn();
				sql="select species from species where CorD = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, CorD);

				rs = psmt.executeQuery();
				
				while(rs.next()) {
					String getSpecies = rs.getString(1);
					species_list.add(getSpecies);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return species_list;
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
				int getpet_num = rs.getInt(1);
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
	public int update_pet(String pet_nick, String pet_profile, String pet_introduce) {
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
	public ArrayList<petVO> get_pet(){
		ArrayList<petVO> pets = new ArrayList<>();
		petVO one_pet = null;
		try {
			getConn();
			sql = "select * from petinfo";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_pet.setPet_num(rs.getInt(1));
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
	
	
	//프로필 삭제
	public int delete_pet(petVO petinfo) {
		try {
			getConn();
			sql = "delete from petinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, petinfo.getPet_num());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	
	public String pet_name(int pet_num) {
		String petName = null;
		try {
			getConn();
			sql = "select pet_nick from petinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				petName = rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return petName;
	}
	public petVO pet_info(int pet_num) {
		petVO one_pet = null;
		try {
			getConn();
			sql = "select * from petinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String pet_nick = rs.getString(2);
				String pet_profile = rs.getString(3);
				String pet_introduce = rs.getString(4);
				String pet_gen = rs.getString(5);
				String species = rs.getString(6);
				String email = rs.getString(7);
				one_pet = new petVO(pet_num, pet_nick, pet_profile, pet_introduce, pet_gen, species, email);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return one_pet;
	}

	
	
}


