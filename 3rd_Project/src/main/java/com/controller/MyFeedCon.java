package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.VO.feedVO;
import com.command.Command;

public class MyFeedCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		
		int pet_num = Integer.parseInt(request.getParameter("pet_num"));
		feedDAO dao = new feedDAO();
		ArrayList<feedVO> feed = dao.my_feed(pet_num);
		
		HttpSession session = request.getSession();
		session.setAttribute("feed_info", feed);
		moveURL = "follow.jsp";
		
		return moveURL;
	}
}
