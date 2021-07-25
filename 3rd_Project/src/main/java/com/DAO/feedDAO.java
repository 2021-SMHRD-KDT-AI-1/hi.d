package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.feedVO;
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

	public int feed_upload(feedVO vo) {
		try {
			getConn();
			sql = "insert into feedinfo values(feed_num_seq.nextval, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getPet_num());
			psmt.setString(2, vo.getImg_addr());
			psmt.setString(3, vo.getFeed_content());
			psmt.setString(4, vo.getLike_pet());
			psmt.setString(5, vo.getF_lock());
			psmt.setDate(6, vo.getUpload_time());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<feedVO> get_feed(){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_feed.setFeed_num(rs.getInt(1));
				one_feed.setPet_num(rs.getInt(2));
				one_feed.setImg_addr(rs.getString(3));
				one_feed.setFeed_content(rs.getString(4));
				one_feed.setLike_pet(rs.getString(5));
				one_feed.setF_lock(rs.getString(6));
				one_feed.setUpload_time(rs.getDate(7));
				feeds.add(one_feed);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	public ArrayList<feedVO> get_n_feed(int n){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from ("
					+ "select * from feedinfo"
					+ "order by DBMS_RANDOM.RANDOM"
					+ ") where rownum < " + n;
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_feed.setFeed_num(rs.getInt(1));
				one_feed.setPet_num(rs.getInt(2));
				one_feed.setImg_addr(rs.getString(3));
				one_feed.setFeed_content(rs.getString(4));
				one_feed.setLike_pet(rs.getString(5));
				one_feed.setF_lock(rs.getString(6));
				one_feed.setUpload_time(rs.getDate(7));
				feeds.add(one_feed);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	public ArrayList<feedVO> following_feed(int pet_num){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where pet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_feed.setFeed_num(rs.getInt(1));
				one_feed.setPet_num(rs.getInt(2));
				one_feed.setImg_addr(rs.getString(3));
				one_feed.setFeed_content(rs.getString(4));
				one_feed.setLike_pet(rs.getString(5));
				one_feed.setF_lock(rs.getString(6));
				one_feed.setUpload_time(rs.getDate(7));
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
	public ArrayList<feedVO> tagged_feed(String tag){
		ArrayList<feedVO> feeds = new ArrayList<>();
		feedVO one_feed = null;
		try {
			getConn();
			sql = "select * from feedinfo where feed_content like %#" + tag + "%";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				one_feed.setFeed_num(rs.getInt(1));
				one_feed.setPet_num(rs.getInt(2));
				one_feed.setImg_addr(rs.getString(3));
				one_feed.setFeed_content(rs.getString(4));
				one_feed.setLike_pet(rs.getString(5));
				one_feed.setF_lock(rs.getString(6));
				one_feed.setUpload_time(rs.getDate(7));
				feeds.add(one_feed);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return feeds;
	}
	
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
}
