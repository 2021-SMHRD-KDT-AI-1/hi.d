package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.VO.feedVO;
import com.command.Command;

public class OneFeedCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		
		int feed_num = Integer.parseInt(request.getParameter("feed_num"));
		feedDAO dao = new feedDAO();
		feedVO feed = dao.get_one_feed(feed_num);
		
		HttpSession session = request.getSession();
		session.setAttribute("feed_info", feed);
		moveURL = "follow.jsp";
		
		return moveURL;
	}
}
