package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.feedVO;
import com.VO.feed_upload_petVO;
import com.VO.memberVO;

public class feedDAO {

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
	
	// 피드 업로드 기능
	public int feed_upload(feedVO vo) {
		try {
			getConn();
			sql = "insert into feedinfo values(feed_num_seq.nextval, ?, ?, ?, ?, ?, sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getPet_num());
			psmt.setString(2, vo.getImg_addr());
			psmt.setString(3, vo.getFeed_content());
			psmt.setString(4, vo.getLike_pet());
			psmt.setString(5, vo.getF_lock());
			//psmt.setDate(6, vo.getUpload_time());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 피드 전부 가져오기
	public ArrayList<feedVO> get_feed(){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	// 랜덤 n개 피드 가져오기
	public ArrayList<feedVO> get_n_feed(int n){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from ("
					+ "select * from feedinfo "
					+ "order by DBMS_RANDOM.RANDOM "
					+ ") where rownum < " + n;
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	// 팔로우한 사람들의 피드 가져오기
	public ArrayList<feed_upload_petVO> following_feed(int pet_num){
		ArrayList<feed_upload_petVO> feeds = new ArrayList<>();
		feed_upload_petVO one_feed = null;
		try {
			getConn();
			sql = "select feed.feed_num, pet.pet_num, pet.pet_nick, pet.pet_profile, feed.img_addr, feed.feed_content, feed.like_pet, feed.f_lock, feed.upload_time\r\n"
					+ "from feedinfo feed, petinfo pet\r\n"
					+ "where pet.pet_num = feed.pet_num\r\n"
					+ "and pet.pet_num in (select following_pet from FOLLOWINFO where pet_num = ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int feed_pet_num = rs.getInt(2);
				String pet_nick = rs.getString(3);
				String pet_profile = rs.getString(4);
				String img_addr = rs.getString(5);
				String feed_content = rs.getString(6);
				String like_pet = rs.getString(7);
				String f_lock = rs.getString(8);
				Date upload_time = rs.getDate(9);
				one_feed = new feed_upload_petVO(feed_num, feed_pet_num, pet_nick, pet_profile, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	// 해당 태그의 피드 전부 가져오기
	public ArrayList<feedVO> tagged_feed(String tag){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where feed_content like '%#" + tag + "%'";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	//  search 피드 전부 가져오기
	public ArrayList<feedVO> search_feed(String tag){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where feed_content like '%" + tag + "%'";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	public feedVO get_one_feed(int feed_num) {
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where feed_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, feed_num);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return one_feed;
	}

	// n번째 글부터 m번째 글까지 가져오기
	public ArrayList<feedVO> get_feed_n_to_m(int n, int m){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where rownum between " + n + " and " + m;
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int feed_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String img_addr = rs.getString(3);
				String feed_content = rs.getString(4);
				String like_pet = rs.getString(5);
				String f_lock = rs.getString(6);
				Date upload_time = rs.getDate(7);
				
				one_feed = new feedVO(feed_num, pet_num, img_addr, feed_content, like_pet, f_lock, upload_time);
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	// 피드 삭제
	public int delete_feed(int feed_num) {
		try {
			getConn();
			sql = "delete from feedinfo where feed_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, feed_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 피드 수정
	public int update_feed(feedVO feed) {
		try {
			getConn();
			sql = "update feedinfo set"
					+ "img_addr = ?,"
					+ "feed_content = ?,"
					+ "f_lock = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, feed.getImg_addr());
			psmt.setString(2, feed.getFeed_content());
			psmt.setString(3, feed.getF_lock());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
