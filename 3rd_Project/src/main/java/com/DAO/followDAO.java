package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.followVO;
import com.VO.memberVO;

public class followDAO {

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

	public ArrayList<Integer> FindFollower(int pet_num){
		ArrayList<Integer> follower = new ArrayList<>();
		try {
			getConn();
			sql = "select following_pet from followinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int follower_num = rs.getInt(1);
				follower.add(follower_num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return follower;
	}
	
	public ArrayList<Integer> FindFollowing(int follower){
		ArrayList<Integer> following = new ArrayList<>();
		try {
			getConn();
			sql = "select pet_num from followinfo where following_pet = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, follower);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int following_num = rs.getInt(1);
				following.add(following_num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return following;
	}
	
	
	
	
	public int follow(int pet_num, int following_pet) {
		try {
			getConn();
			sql = "insert into followinfo values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			psmt.setInt(2, following_pet);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	
	//언팔로우기능
	public int unfollow(int pet_num, int following_pet) {
		try {
			getConn();
			sql = "delete from followinfo where pet_num=? and following_pet=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			psmt.setInt(2, following_pet);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	public boolean i_follow_u(int pet_num, int following_pet) {
		try {
			getConn();
			sql = "select following_pet from followinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int get_pet_num = rs.getInt(1);
				if(get_pet_num == following_pet) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return false;
	}
	
	
}
