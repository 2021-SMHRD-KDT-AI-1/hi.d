package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.feedVO;
import com.VO.feed_commentVO;
import com.VO.memberVO;
import com.VO.petVO;

public class likeDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	String sql = "";
	feedVO vo_feed = null;
	feed_commentVO vo_comment = null;
	
	
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
	
	//내가 피드에 좋아요를 눌렀는가
	public boolean Like(int feed_num, String like_pet) {
		// select는 리턴타입이 다르다
		boolean like_feed = false;
		int getfeed_num;
		try {
			getConn();
			sql = "select feed_num from feedinfo where like_pet like '%?%'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, like_pet);

			rs = psmt.executeQuery();

			if(rs.next()) {
				getfeed_num = rs.getInt(1);
				if (feed_num == getfeed_num) {
					like_feed = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace(); // try문이 실행이 안되면 오류를 출력해주는 문
		} finally {
			close();
		}
		return like_feed;
	}
	
	// 좋아요 한 피드 모두 가져오기
	public ArrayList<feedVO> get_like(String like_pet){
		ArrayList<feedVO> likes = new ArrayList<>();
		feedVO one_like = null;
		try {
			getConn();
			sql = "select * from feedinfo where like_pet like '%?%'";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, like_pet);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				one_like.setFeed_num(rs.getInt(1));
				one_like.setPet_num(rs.getInt(2));
				one_like.setImg_addr(rs.getString(3));
				one_like.setFeed_content(rs.getString(4));
				one_like.setLike_pet(rs.getString(5));
				one_like.setF_lock(rs.getString(6));
				one_like.setUpload_time(rs.getDate(7));
				likes.add(one_like);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return likes;
	}

	//좋아요 추가
	public int Updatelike(feedVO feedlike) {
		try { 
			getConn();
			sql = "update feedinfo set like_pet = ? || ',' || ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, feedlike.getLike_pet());
			psmt.setInt(2, feedlike.getPet_num());

			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 좋아요 취소
	public int Delete_like(int feed_num, int pet_num) {
		String like_pet = "";
		try {
			getConn();
			sql = "select like_pet from feedinfo where like_pet like '%?%' ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);

			rs = psmt.executeQuery();
			
			if(rs.next()) {
				like_pet = rs.getString(1);
			}
			
			like_pet = like_pet.replace(pet_num+"", "");
			
			sql = "update feedinfo set like_pet = ? where feed_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, like_pet);
			psmt.setInt(2, feed_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// 댓글 좋아요
	public int UpdateCommentlike(feedVO commentlike) {
		try { 
			getConn();
			sql = "update feed_comment set like_pet = ? || ',' || ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, commentlike.getLike_pet());
			psmt.setInt(2, commentlike.getPet_num());

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	// 댓글 좋아요 취소
	public int DeleteCommentlike(int comment_num, int feed_num, int pet_num) {
		String like_pet = "";
		try {
			getConn();
			sql = "select like_pet from feed_comment where like_pet like '%?%' ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);

			rs = psmt.executeQuery();
			
			if(rs.next()) {
				like_pet = rs.getString(5);
			}
			
			like_pet = like_pet.replace(pet_num+"", "");
			
			sql = "update feed_comment set like_pet = ? where comment_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, like_pet);
			psmt.setInt(2, comment_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}
