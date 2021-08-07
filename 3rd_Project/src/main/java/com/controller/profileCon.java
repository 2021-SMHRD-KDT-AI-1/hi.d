package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.emotionDAO;
import com.DAO.feedDAO;
import com.DAO.petDAO;
import com.VO.emotionVO;
import com.VO.feedVO;
import com.VO.petVO;
import com.VO.pet_followVO;
import com.command.Command;

public class profileCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		HttpSession session = request.getSession();
		int profile_owner_num = Integer.parseInt(request.getParameter("owner"));
		petDAO pet_dao = new petDAO();
		feedDAO feed_dao = new feedDAO();
		emotionDAO emotion_dao = new emotionDAO();
		petVO pet_info = pet_dao.pet_profile_load(profile_owner_num);
		
		int following_cnt = pet_dao.following_pet(profile_owner_num);
		int follow_cnt = pet_dao.follow_pet(profile_owner_num);
		int feed_cnt = pet_dao.feedCount(profile_owner_num);
		
		pet_followVO profile = new pet_followVO(profile_owner_num, pet_info.getPet_profile(), pet_info.getPet_nick(), following_cnt, follow_cnt, feed_cnt, pet_info.getPet_introduce());
		ArrayList<feedVO> feeds = feed_dao.get_my_feeds(profile_owner_num);
		ArrayList<emotionVO> emotions = emotion_dao.get_All_emoti();
		
		session.setAttribute("profile", profile);
		session.setAttribute("profile_feed", feeds);
		session.setAttribute("emotions", emotions);
		moveURL = "hover_video_test.jsp";
		
		return moveURL;
	}
}
