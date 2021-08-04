package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.petDAO;
import com.VO.petVO;
import com.VO.pet_followVO;
import com.command.Command;

public class profileCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		HttpSession session = request.getSession();
		int profile_owner_num = Integer.parseInt(request.getParameter("owner"));
		petDAO dao = new petDAO();
		petVO pet_info = dao.pet_profile_load(profile_owner_num);
		int following_cnt = dao.following_pet(profile_owner_num);
		int follow_cnt = dao.follow_pet(profile_owner_num);
		int feed_cnt = dao.feedCount(profile_owner_num);
		
		pet_followVO profile = new pet_followVO(profile_owner_num, pet_info.getPet_profile(), pet_info.getPet_nick(), following_cnt, follow_cnt, feed_cnt, pet_info.getPet_introduce());
		
		session.setAttribute("profile", profile);
		moveURL = "hover_video_test.jsp";
		
		return moveURL;
	}
}
