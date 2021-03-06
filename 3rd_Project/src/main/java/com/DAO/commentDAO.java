package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.feed_commentVO;
import com.VO.memberVO;
import com.VO.petVO;

public class commentDAO {

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
	
	public ArrayList<feed_commentVO> getfeedcomment(int feed_num){
		ArrayList<feed_commentVO> comments = new ArrayList<>();
		feed_commentVO comment = null;
		
		try {
			getConn();
			sql = "select * from feed_comment where feed_num = ? order by comment_num asc";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, feed_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int comment_num = rs.getInt(1);
				int pet_num = rs.getInt(2);
				String comment_content = rs.getString(4);
				String like_pet = rs.getString(5);
				comment = new feed_commentVO(comment_num, pet_num, feed_num, comment_content, like_pet);
				comments.add(comment);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return comments;
	}
	
	public int comment_upload(feed_commentVO comment) {
		try {
			getConn();
			sql = "insert into feed_comment values(comment_num_seq.nextval, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, comment.getPet_num());
			psmt.setInt(2, comment.getFeed_num());
			psmt.setString(3, comment.getComment_content());
			psmt.setString(4, comment.getLike_pet());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<String[]> comment_info(int feed_num){
		ArrayList<String[]> arr = new ArrayList<>();
		String p_nick = "";
		String content = "";
		try {
			getConn();
			
			sql = "select pet.pet_nick, comm.comment_content\n"
					+ "from petinfo pet, FEED_COMMENT comm, FEEDINFO feed\n"
					+ "where feed.feed_num = comm.feed_num\n"
					+ "and pet.pet_num = comm.pet_num\n"
					+ "and feed.feed_num = ? "
					+ "order by comm.comment_num asc";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, feed_num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				p_nick = rs.getString(1);
				content = rs.getString(2);
				String[] comment_one = {p_nick, content};
				arr.add(comment_one);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
		
	}
	
}
