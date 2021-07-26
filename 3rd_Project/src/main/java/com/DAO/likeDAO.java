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
	
	//���� �ǵ忡 ���ƿ並 �����°�
	public feedVO Like(String like_pet) {
		// select�� ����Ÿ���� �ٸ���
		try {

			getConn();

			sql = "select * from feedinfo where like_pet like '%?%'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, like_pet);

			rs = psmt.executeQuery();

			if(rs.next()) {

				int getfeed_num = rs.getInt(1);
			

				if (like_pet.equals(getfeed_num)) {

					vo_feed = new feedVO(getfeed_num);
					
				}
			}

		} catch (Exception e) {
			e.printStackTrace(); // try���� ������ �ȵǸ� ������ ������ִ� ��
		} finally {
			close();
		}
		return vo_feed;
	}
	
	// ���ƿ� �� �ǵ� ��� ��������
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

	//���ƿ� �߰�
	public int Updatelike(feedVO feedlike) {

		try { 

			getConn();

			sql = "update feedinfo set like_pet = ? ||','|| ?";

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
	
	// ���ƿ� ���
	public int delete_like(int pet_num) {
		try {
			getConn();
			sql = "delete from feedinfo where like_pet like '%?%' ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pet_num);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int UpdateCommentlike(feedVO commentlike) {

		try { 

			getConn();

			sql = "update feed_comment set like_pet = ? ||','|| ?";

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
	
	
}
